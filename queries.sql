-- The daily list every broker needs — 
-- what are we currently holding, who owns it and what is the asking price. Sorted by property type then price. --
select 
p.listing_code,
p.property_type,
p.locality,
p.area_value,
p.area_unit,
round(p.asking_price/10000000,2) asking_price,
p.possession_status,
c.full_name ,
c.phone ,
DATEDIFF(CURDATE(), p.listed_date) as days_listed,
p.status
from properties p
join contacts c on c.contact_id = p.owner_id
where p.status in ('Active', 'Under Negotiation')
order by p.property_type, p.asking_price desc;

-- A management-level view of the full portfolio.-- 
-- How many properties are active vs sold vs stuck, and what is the total value at each stage --
SELECT
  property_type,
  COUNT(*)                                                      AS total_listings,
  SUM(CASE WHEN status = 'Active'             THEN 1 ELSE 0 END) AS active,
  SUM(CASE WHEN status = 'Under Negotiation'  THEN 1 ELSE 0 END) AS under_negotiation,
  SUM(CASE WHEN status = 'Sold'              THEN 1 ELSE 0 END) AS sold,
  ROUND(AVG(asking_price) / 10000000, 2)                      AS avg_asking_cr,
  ROUND(SUM(asking_price) / 10000000, 2)                      AS total_portfolio_value_cr
FROM properties
GROUP BY property_type
ORDER BY total_portfolio_value_cr DESC;

-- Counts how many active buyer requirements mention each locality.--
--  This is the demand signal — and it is what you would present to a seller to show them where the buyers are. --

SELECT
  rl.locality,
  COUNT(DISTINCT br.requirement_id) AS active_requirements,
  COUNT(DISTINCT br.buyer_id)       AS unique_buyers,
  GROUP_CONCAT(DISTINCT br.property_type ORDER BY br.property_type SEPARATOR ' · ')
                                     AS property_types_wanted,
  ROUND(AVG(br.budget_max) / 10000000, 2) AS avg_budget_max_cr
FROM requirement_localities rl
JOIN buyer_requirements br ON rl.requirement_id = br.requirement_id
WHERE br.status = 'Active'
GROUP BY rl.locality
ORDER BY active_requirements DESC, avg_budget_max_cr DESC;

-- Compares how many buyers want each locality against how many active listings exist there. -- 
-- The gap reveals where you need more listings, and where you have oversupply.--

WITH demand AS (
  SELECT rl.locality,
         COUNT(DISTINCT br.requirement_id) AS buyer_demand
  FROM requirement_localities rl
  JOIN buyer_requirements br ON rl.requirement_id = br.requirement_id
  WHERE br.status = 'Active'
  GROUP BY rl.locality
),
supply AS (
  SELECT locality,
         COUNT(*) AS active_listings
  FROM properties
  WHERE status IN ('Active', 'Under Negotiation')
  GROUP BY locality
)
SELECT
  COALESCE(d.locality, s.locality)              AS locality,
  COALESCE(d.buyer_demand, 0)                  AS buyer_demand,
  COALESCE(s.active_listings, 0)               AS active_supply,
  COALESCE(d.buyer_demand, 0) -
  COALESCE(s.active_listings, 0)               AS demand_supply_gap,
  CASE
    WHEN COALESCE(s.active_listings, 0) = 0             THEN 'No listings — source properties here'
    WHEN COALESCE(d.buyer_demand, 0) > s.active_listings THEN 'Undersupplied'
    WHEN COALESCE(d.buyer_demand, 0) = s.active_listings THEN 'Balanced'
    ELSE                                                        'Oversupplied'
  END                                            AS market_status
FROM demand d
LEFT JOIN supply s ON d.locality = s.locality

UNION

SELECT
  COALESCE(d.locality, s.locality),
  COALESCE(d.buyer_demand, 0),
  COALESCE(s.active_listings, 0),
  COALESCE(d.buyer_demand, 0) - COALESCE(s.active_listings, 0),
  CASE
    WHEN COALESCE(s.active_listings, 0) = 0             THEN 'No listings — source properties here'
    WHEN COALESCE(d.buyer_demand, 0) > s.active_listings THEN 'Undersupplied'
    WHEN COALESCE(d.buyer_demand, 0) = s.active_listings THEN 'Balanced'
    ELSE                                                        'Oversupplied'
  END
FROM demand d
RIGHT JOIN supply s ON d.locality = s.locality
WHERE d.locality IS NULL

ORDER BY demand_supply_gap DESC;

-- For each completed transaction, how many showings and meetings happened before the sale? --

SELECT
  p.listing_code,
  p.property_type,
  p.locality,
  cb.full_name                                         AS buyer,
  cs.full_name                                         AS seller,
  ROUND(t.final_sale_price / 10000000, 2)            AS sale_price_cr,
  t.registration_date,
  COUNT(DISTINCT ps.showing_id)                       AS showings_before_sale,
  COUNT(DISTINCT m.meeting_id)                        AS total_meetings,
  DATEDIFF(t.registration_date, p.listed_date)        AS days_to_close
FROM transactions t
JOIN properties p  ON t.property_id = p.property_id
JOIN contacts   cb ON t.buyer_id  = cb.contact_id
JOIN contacts   cs ON t.seller_id = cs.contact_id
LEFT JOIN property_showings ps ON ps.property_id = p.property_id
LEFT JOIN meetings          m  ON m.property_id  = p.property_id
                              AND m.buyer_id = t.buyer_id
GROUP BY t.transaction_id, p.listing_code, p.property_type, p.locality,
         cb.full_name, cs.full_name, t.final_sale_price,
         t.registration_date, p.listed_date
ORDER BY days_to_close;

-- Of all the ways we present a property (photos, location pin, site visit), which generates the most "Interested" responses? --

SELECT
  method,
  COUNT(*)                                                           AS total_showings,
  SUM(CASE WHEN buyer_response = 'Interested'    THEN 1 ELSE 0 END) AS interested,
  SUM(CASE WHEN buyer_response = 'Maybe'         THEN 1 ELSE 0 END) AS maybe,
  SUM(CASE WHEN buyer_response = 'Not Interested'THEN 1 ELSE 0 END) AS not_interested,
  ROUND(
    SUM(CASE WHEN buyer_response = 'Interested' THEN 1 ELSE 0 END) * 100.0
    / COUNT(*), 1
  )                                                                  AS interest_rate_pct
FROM property_showings
GROUP BY method
ORDER BY interest_rate_pct DESC;

-- Active properties ranked by how long they have been listed.--
-- Flags anything over 180 days as needing a price revision conversation with the owner.--

SELECT
  p.listing_code,
  p.property_type,
  p.locality,
  ROUND(p.asking_price / 10000000, 2)    AS asking_cr,
  p.listed_date,
  DATEDIFF(CURDATE(), p.listed_date)       AS days_listed,
  CASE
    WHEN DATEDIFF(CURDATE(), p.listed_date) > 180 THEN '⚠ Review price with owner'
    WHEN DATEDIFF(CURDATE(), p.listed_date) >  90  THEN 'Monitor closely'
    ELSE                                                  'Active — within normal range'
  END                                       AS listing_health,
  RANK() OVER (ORDER BY p.listed_date)    AS oldest_rank
FROM properties p
WHERE p.status IN ('Active', 'Under Negotiation')
ORDER BY days_listed DESC;

-- How much are buyers actually negotiating off the listed price? --
-- Useful for setting owner expectations when listing a new property.--

SELECT
  p.listing_code,
  p.property_type,
  p.locality,
  ROUND(p.asking_price / 10000000, 2)                AS asked_cr,
  ROUND(t.final_sale_price / 10000000, 2)            AS sold_cr,
  ROUND((p.asking_price - t.final_sale_price) / 100000, 2) AS discount_lakhs,
  ROUND(
    (p.asking_price - t.final_sale_price) * 100.0 / p.asking_price, 2
  )                                                     AS discount_pct,
  DATEDIFF(t.registration_date, p.listed_date)        AS days_to_close
FROM transactions t
JOIN properties p ON t.property_id = p.property_id;

-- Groups all meeting outcomes for properties that did NOT close.--
-- The most important question to answer: is price the main blocker, or something else? --

SELECT
  m.outcome,
  COUNT(*) AS occurrences,
  GROUP_CONCAT(
    DISTINCT p.listing_code ORDER BY p.listing_code SEPARATOR ', '
  )        AS properties_involved
FROM meetings m
JOIN properties p ON m.property_id = p.property_id
WHERE m.outcome NOT IN ('Agreement Reached')
  AND p.status <> 'Sold'
GROUP BY m.outcome
ORDER BY occurrences DESC; 

-- The complete financial picture: total commission earned across all deals --
--  how much has been collected, and what is still outstanding. Broken down by seller side and buyer side. --SELECT
  SELECT
  p.listing_code,
  p.property_type,
  p.locality,
  cb.full_name                                                   AS buyer,
  ROUND(t.final_sale_price / 10000000, 2)                    AS sale_price_cr,
  ROUND(t.seller_commission_amt / 100000, 2)                 AS seller_comm_l,
  t.seller_commission_status,
  ROUND(COALESCE(t.buyer_commission_amt, 0) / 100000, 2)     AS buyer_comm_l,
  t.buyer_commission_status,
  ROUND(t.total_commission / 100000, 2)                      AS total_comm_l,
  ROUND(t.total_commission_received / 100000, 2)              AS received_l,
  ROUND((t.total_commission - t.total_commission_received) / 100000, 2)
                                                                 AS pending_l
FROM transactions t
JOIN properties p  ON t.property_id = p.property_id
JOIN contacts   cb ON t.buyer_id    = cb.contact_id
ORDER BY t.total_commission DESC;

-- Summary totals
SELECT
  ROUND(SUM(total_commission) / 100000, 2)          AS total_earned_l,
  ROUND(SUM(total_commission_received) / 100000, 2)  AS total_received_l,
  ROUND(SUM(total_commission -
             total_commission_received) / 100000, 2)  AS total_pending_l,
  COUNT(*)                                             AS total_deals,
  SUM(CASE WHEN buyer_commission_status = 'Pending' AND
                buyer_commission_amt > 0
           THEN 1 ELSE 0 END)                        AS buyer_comm_pending_count,
  SUM(CASE WHEN seller_commission_status = 'Pending'
           THEN 1 ELSE 0 END)                        AS seller_comm_pending_count
FROM transactions;

-- Which property types generate the most commission? And what percentage of deals earn from both sides vs only one? --

SELECT
  p.property_type,
  COUNT(t.transaction_id)                                        AS deals_closed,
  ROUND(SUM(t.final_sale_price) / 10000000, 2)               AS total_sale_value_cr,
  ROUND(SUM(t.total_commission) / 100000, 2)                  AS total_commission_l,
  ROUND(AVG(t.total_commission) / 100000, 2)                  AS avg_commission_per_deal_l,
  SUM(CASE WHEN t.buyer_commission_pct > 0 AND
                t.seller_commission_pct > 0
           THEN 1 ELSE 0 END)                                    AS double_sided_deals,
  ROUND(
    SUM(CASE WHEN t.buyer_commission_pct > 0 AND
                  t.seller_commission_pct > 0
             THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 0
  )                                                                AS double_sided_pct
FROM transactions t
JOIN properties p ON t.property_id = p.property_id
GROUP BY p.property_type
ORDER BY total_commission_l DESC;

-- Traces every closed deal back to how the buyer was originally acquired. Shows which lead source (referral, ad, walk-in, portal) is most valuable —-
-- not just in volume, but in actual commission earned --

SELECT
  c.source                                             AS buyer_source,
  COUNT(DISTINCT t.transaction_id)                    AS deals_closed,
  COUNT(DISTINCT c.contact_id)                        AS unique_buyers,
  ROUND(SUM(t.final_sale_price) / 10000000, 2)      AS total_value_cr,
  ROUND(SUM(t.total_commission) / 100000, 2)         AS total_commission_l,
  ROUND(AVG(t.total_commission) / 100000, 2)         AS avg_commission_per_deal_l
FROM contacts c
JOIN transactions t ON c.contact_id = t.buyer_id
GROUP BY c.source
ORDER BY total_commission_l DESC;

-- Uses a self-join on the contacts table to trace the referral network. Shows which clients are most valuable not just for their own deals, but for the clients they bring in. --

SELECT
  referrer.full_name                              AS referred_by,
  referrer.contact_type                           AS referrer_type,
  referred.full_name                              AS referred_contact,
  referred.contact_type                           AS referred_type,
  COALESCE(t.final_sale_price / 10000000, 0)   AS deal_value_cr,
  COALESCE(t.total_commission / 100000, 0)      AS commission_generated_l,
  CASE
    WHEN t.transaction_id IS NOT NULL THEN 'Deal closed'
    ELSE                                    'Active / In pipeline'
  END                                           AS referral_outcome
FROM contacts referred
JOIN contacts     referrer ON referred.referred_by_id = referrer.contact_id
LEFT JOIN transactions t  ON t.buyer_id = referred.contact_id
ORDER BY commission_generated_l DESC;
