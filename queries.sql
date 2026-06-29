
-- The daily working list every broker needs. Flags anything sitting for 180+ days as needing a price conversation with the owner.--
SELECT
  p.listing_code, p.property_type, p.locality,
  ROUND(p.asking_price/10000000,2) AS asking_cr,
  c.full_name AS owner, c.phone AS owner_phone,
  DATEDIFF(CURDATE(),p.listed_date) AS days_listed,
  CASE WHEN DATEDIFF(CURDATE(),p.listed_date) > 365 THEN '⚠ Urgent — price review overdue'
       WHEN DATEDIFF(CURDATE(),p.listed_date) > 180 THEN 'Review price with owner'
       ELSE 'Healthy' END AS listing_health,
  p.status
FROM properties p
JOIN contacts c ON p.owner_id = c.contact_id
WHERE p.status IN ('Active','Under Negotiation')
ORDER BY days_listed DESC;

-- Pipeline Summary --

SELECT
  property_type,
  COUNT(*) AS total_listings,
  SUM(CASE WHEN status='Active' THEN 1 ELSE 0 END) AS active,
  SUM(CASE WHEN status='Under Negotiation' THEN 1 ELSE 0 END) AS under_negotiation,
  SUM(CASE WHEN status='Sold' THEN 1 ELSE 0 END) AS sold,
  ROUND(AVG(asking_price)/10000000,2) AS avg_asking_cr,
  ROUND(SUM(asking_price)/10000000,2) AS total_portfolio_cr
FROM properties
GROUP BY property_type
ORDER BY total_portfolio_cr DESC;

-- Of everything ever listed in a category, what % actually sold? A direct measure of which property types move fastest in this market.--

SELECT
  property_type,
  COUNT(*) AS total_listed,
  SUM(CASE WHEN status='Sold' THEN 1 ELSE 0 END) AS sold,
  ROUND(
    SUM(CASE WHEN status='Sold' THEN 1 ELSE 0 END)*100.0/COUNT(*),1
  ) AS sell_through_pct
FROM properties
GROUP BY property_type
ORDER BY sell_through_pct DESC;

-- Most in demand localities - active buyer requirements --

SELECT
  rl.locality,
  COUNT(DISTINCT br.requirement_id) AS active_requirements,
  COUNT(DISTINCT br.buyer_id) AS unique_buyers,
  GROUP_CONCAT(DISTINCT br.property_type ORDER BY br.property_type SEPARATOR ' · ') AS types_wanted,
  ROUND(AVG(br.budget_max)/10000000,2) AS avg_budget_cr
FROM requirement_localities rl
JOIN buyer_requirements br ON rl.requirement_id = br.requirement_id
WHERE br.status = 'Active'
GROUP BY rl.locality
ORDER BY active_requirements DESC, avg_budget_cr DESC;

-- supply vs demand gap by locality --
WITH demand AS (
  SELECT rl.locality, COUNT(DISTINCT br.requirement_id) AS buyer_demand
  FROM requirement_localities rl
  JOIN buyer_requirements br ON rl.requirement_id = br.requirement_id
  WHERE br.status = 'Active'
  GROUP BY rl.locality
),
supply AS (
  SELECT locality, COUNT(*) AS active_listings
  FROM properties
  WHERE status IN ('Active','Under Negotiation')
  GROUP BY locality
)
SELECT
  COALESCE(d.locality,s.locality) AS locality,
  COALESCE(d.buyer_demand,0) AS buyer_demand,
  COALESCE(s.active_listings,0) AS active_supply,
  COALESCE(d.buyer_demand,0) - COALESCE(s.active_listings,0) AS gap,
  CASE
    WHEN COALESCE(s.active_listings,0)=0 THEN 'No listings — source here'
    WHEN COALESCE(d.buyer_demand,0) > s.active_listings THEN 'Undersupplied'
    WHEN COALESCE(d.buyer_demand,0) = s.active_listings THEN 'Balanced'
    ELSE 'Oversupplied'
  END AS market_status
FROM demand d LEFT JOIN supply s ON d.locality = s.locality
UNION
SELECT
  COALESCE(d.locality,s.locality), COALESCE(d.buyer_demand,0), COALESCE(s.active_listings,0),
  COALESCE(d.buyer_demand,0) - COALESCE(s.active_listings,0),
  CASE
    WHEN COALESCE(s.active_listings,0)=0 THEN 'No listings — source here'
    WHEN COALESCE(d.buyer_demand,0) > s.active_listings THEN 'Undersupplied'
    WHEN COALESCE(d.buyer_demand,0) = s.active_listings THEN 'Balanced'
    ELSE 'Oversupplied'
  END
FROM demand d RIGHT JOIN supply s ON d.locality = s.locality
WHERE d.locality IS NULL
ORDER BY gap DESC;

-- showings and meetings per closed deal, with days to close --

SELECT
  p.listing_code, p.property_type, p.locality,
  cb.full_name AS buyer, cs.full_name AS seller,
  ROUND(t.final_sale_price/10000000,2) AS sale_cr,
  COUNT(DISTINCT ps.showing_id) AS showings,
  COUNT(DISTINCT m.meeting_id) AS meetings,
  DATEDIFF(t.registration_date,p.listed_date) AS days_to_close
FROM transactions t
JOIN properties p ON t.property_id=p.property_id
JOIN contacts cb ON t.buyer_id=cb.contact_id
JOIN contacts cs ON t.seller_id=cs.contact_id
LEFT JOIN property_showings ps ON ps.property_id=p.property_id
LEFT JOIN meetings m ON m.property_id=p.property_id AND m.buyer_id=t.buyer_id
GROUP BY t.transaction_id,p.listing_code,p.property_type,p.locality,
         cb.full_name,cs.full_name,t.final_sale_price,t.registration_date,p.listed_date
ORDER BY days_to_close;

-- showing method conversion rate -- 
SELECT
  method, COUNT(*) AS total,
  SUM(CASE WHEN buyer_response='Interested' THEN 1 ELSE 0 END) AS interested,
  ROUND(
    SUM(CASE WHEN buyer_response='Interested' THEN 1 ELSE 0 END)*100.0/COUNT(*),1
  ) AS interest_rate_pct
FROM property_showings
GROUP BY method
ORDER BY interest_rate_pct DESC;

-- How many meetings does a typical deal take? Window function ranks deals by negotiation length.--

SELECT
  p.listing_code, p.property_type,
  MAX(m.meeting_number) AS total_meetings,
  RANK() OVER (ORDER BY MAX(m.meeting_number) DESC) AS negotiation_rank
FROM meetings m
JOIN properties p ON m.property_id = p.property_id
JOIN transactions t ON t.property_id = p.property_id AND t.buyer_id = m.buyer_id
GROUP BY p.listing_code, p.property_type
ORDER BY total_meetings DESC; 

-- asking price vs final price - negotiation discount analysis -- 

SELECT
  p.listing_code, p.property_type, p.locality,
  ROUND(p.asking_price/10000000,2) AS asked_cr,
  ROUND(t.final_sale_price/10000000,2) AS sold_cr,
  ROUND((p.asking_price-t.final_sale_price)/100000,2) AS discount_lakhs,
  ROUND((p.asking_price-t.final_sale_price)*100.0/p.asking_price,2) AS discount_pct,
  DATEDIFF(t.registration_date,p.listed_date) AS days_to_close
FROM transactions t
JOIN properties p ON t.property_id=p.property_id
ORDER BY discount_pct DESC;

-- why deals fail - meeting outcome breakdown --
SELECT
  m.outcome, COUNT(*) AS occurrences,
  GROUP_CONCAT(DISTINCT p.listing_code ORDER BY p.listing_code SEPARATOR ', ') AS properties_involved
FROM meetings m
JOIN properties p ON m.property_id = p.property_id
WHERE m.outcome NOT IN ('Agreement Reached')
  AND p.status <> 'Sold'
GROUP BY m.outcome
ORDER BY occurrences DESC;

--fastest and slowest closing property -- 

SELECT
  p.property_type,
  COUNT(*) AS deals,
  ROUND(AVG(DATEDIFF(t.registration_date,p.listed_date)),0) AS avg_days_to_close,
  MIN(DATEDIFF(t.registration_date,p.listed_date)) AS fastest_close,
  MAX(DATEDIFF(t.registration_date,p.listed_date)) AS slowest_close
FROM transactions t
JOIN properties p ON t.property_id = p.property_id
GROUP BY p.property_type
ORDER BY avg_days_to_close;

-- Every listing's price-per-unit compared against the live market average for its own locality and property type, using a window function.--
-- This is the comp analysis a broker does manually — formalised into one query. Locality+type groups with only one listing show 0% deviation by definition treat those as inconclusive, not flat-priced.

 p.listing_code, p.property_type, p.locality, p.status,
  ROUND(p.asking_price/p.area_value,0) AS price_per_unit,
  ROUND(AVG(p.asking_price/p.area_value) OVER (
    PARTITION BY p.property_type, p.locality
  ),0) AS locality_avg_price_per_unit,
  ROUND(
    ((p.asking_price/p.area_value) - AVG(p.asking_price/p.area_value) OVER (
      PARTITION BY p.property_type, p.locality
    )) * 100.0 / AVG(p.asking_price/p.area_value) OVER (
      PARTITION BY p.property_type, p.locality
    ),1
  ) AS pct_deviation_from_market
FROM properties p
ORDER BY ABS(pct_deviation_from_market) DESC;

-- Do listings that sit longer actually get bigger discounts, or does stubborn pricing just stall a deal indefinitely instead? This bucketed view answers it directly. --

SELECT
  CASE
    WHEN DATEDIFF(t.registration_date,p.listed_date) < 60  THEN 'Under 60 days'
    WHEN DATEDIFF(t.registration_date,p.listed_date) < 120 THEN '60-120 days'
    WHEN DATEDIFF(t.registration_date,p.listed_date) < 240 THEN '120-240 days'
    ELSE '240+ days'
  END AS time_on_market_bucket,
  COUNT(*) AS deals,
  ROUND(AVG((p.asking_price-t.final_sale_price)*100.0/p.asking_price),2) AS avg_discount_pct,
  MIN(DATEDIFF(t.registration_date,p.listed_date)) AS bucket_sort
FROM transactions t
JOIN properties p ON t.property_id = p.property_id
GROUP BY time_on_market_bucket
ORDER BY bucket_sort;

--Group every listing by the quarter it entered the system, then track what % eventually sold and how long it took. This is standard "vintage" analysis in real estate analytics — it answers whether the firm's sourcing and pricing has gotten better or worse over time, not just snapshot performance.
SELECT
  CONCAT(YEAR(p.listed_date),'-Q',QUARTER(p.listed_date)) AS listing_cohort,
  COUNT(*) AS total_listed,
  SUM(CASE WHEN p.status='Sold' THEN 1 ELSE 0 END) AS sold,
  ROUND(
    SUM(CASE WHEN p.status='Sold' THEN 1 ELSE 0 END)*100.0/COUNT(*),1
  ) AS sell_through_pct,
  ROUND(AVG(
    CASE WHEN p.status='Sold' THEN
      DATEDIFF((SELECT t.registration_date FROM transactions t
                     WHERE t.property_id = p.property_id), p.listed_date)
    END
  ),0) AS avg_days_to_sell
FROM properties p
GROUP BY listing_cohort
ORDER BY listing_cohort;

-- comission dashboard - earned vs received vs pending
SELECT
  p.listing_code, p.property_type,
  ROUND(t.total_commission/100000,2) AS total_comm_l,
  ROUND(t.total_commission_received/100000,2) AS received_l,
  ROUND((t.total_commission-t.total_commission_received)/100000,2) AS pending_l,
  t.seller_commission_status, t.buyer_commission_status
FROM transactions t
JOIN properties p ON t.property_id = p.property_id
ORDER BY pending_l DESC;

-- Summary totals
SELECT
  ROUND(SUM(total_commission)/100000,2) AS total_earned_l,
  ROUND(SUM(total_commission_received)/100000,2) AS total_received_l,
  ROUND(SUM(total_commission-total_commission_received)/100000,2) AS total_pending_l,
  COUNT(*) AS total_deals
FROM transactions;

-- Revenue and double - sided comission rate by property type 
SELECT
  p.property_type,
  COUNT(t.transaction_id) AS deals,
  ROUND(SUM(t.total_commission)/100000,2) AS total_commission_l,
  ROUND(AVG(t.total_commission)/100000,2) AS avg_commission_l,
  SUM(CASE WHEN t.buyer_commission_pct>0 AND t.seller_commission_pct>0 THEN 1 ELSE 0 END) AS double_sided,
  ROUND(
    SUM(CASE WHEN t.buyer_commission_pct>0 AND t.seller_commission_pct>0 THEN 1 ELSE 0 END)*100.0/COUNT(*),0
  ) AS double_sided_pct
FROM transactions t
JOIN properties p ON t.property_id = p.property_id
GROUP BY p.property_type
ORDER BY total_commission_l DESC;

-- monthly comission trend across the 2 year window --

SELECT
  DATE_FORMAT(registration_date,'%Y-%m') AS month,
  COUNT(*) AS deals_closed,
  ROUND(SUM(final_sale_price)/10000000,2) AS total_value_cr,
  ROUND(SUM(total_commission)/100000,2) AS commission_l
FROM transactions
GROUP BY month
ORDER BY month;

--commission by lead source 
SELECT
  c.source AS buyer_source,
  COUNT(DISTINCT t.transaction_id) AS deals,
  ROUND(SUM(t.total_commission)/100000,2) AS total_commission_l,
  ROUND(AVG(t.total_commission)/100000,2) AS avg_commission_l
FROM contacts c
JOIN transactions t ON c.contact_id = t.buyer_id
GROUP BY c.source
ORDER BY total_commission_l DESC;

-- top repeat clients by transaction count and value
SELECT
  c.full_name, c.contact_type, c.source,
  COUNT(*) AS deals_as_buyer,
  ROUND(SUM(t.final_sale_price)/10000000,2) AS total_value_cr,
  ROUND(SUM(t.total_commission)/100000,2) AS commission_generated_l
FROM contacts c
JOIN transactions t ON c.contact_id = t.buyer_id
GROUP BY c.contact_id, c.full_name, c.contact_type, c.source
HAVING COUNT(*) >= 2
ORDER BY commission_generated_l DESC;

-- referral chain - who brings in business 

SELECT
  referrer.full_name AS referred_by,
  referred.full_name AS referred_contact,
  COALESCE(t.final_sale_price/10000000,0) AS deal_value_cr,
  COALESCE(t.total_commission/100000,0) AS commission_generated_l,
  CASE WHEN t.transaction_id IS NOT NULL THEN 'Deal closed' ELSE 'In pipeline' END AS outcome
FROM contacts referred
JOIN contacts referrer ON referred.referred_by_id = referrer.contact_id
LEFT JOIN transactions t ON t.buyer_id = referred.contact_id
ORDER BY commission_generated_l DESC;
