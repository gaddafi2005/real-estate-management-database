# Maam Real Estate — Property Sales Operations
## A SQL portfolio project built on real brokerage experience in Hyderabad

---

## The Business

Maam Real Estate is a property brokerage acting as intermediary between
owners and buyers across Hyderabad. The firm maintains two pipelines at
once — buyer requirements and seller listings — and earns commission by
matching them, running joint negotiation meetings, and closing the sale.
Commission is collected from the seller, the buyer, or both, depending on
which side of the deal the firm already has a relationship with.

This project models that exact workflow with 2 years of data
(Jan 2023 – Aug 2024): 50 contacts, 45 properties, 40 buyer requirements,
45 property showings, 65 negotiation meetings, and 31 closed transactions
worth ₹1.30 crore in commission.

---

## Key Findings

**1. Price gap is the single biggest reason deals fail.**
Across all unsuccessful meetings, "No Deal - Price Gap" outweighs every
other outcome combined. One Jubilee Hills villa has had two separate
buyers walk away from the same ~50-70L gap — a strong signal the asking
price itself needs revision, not just better negotiation.

**2. A small number of repeat clients drive a disproportionate share of revenue.**
One developer client closed 3 separate deals in 14 months, generating
₹17.4L in commission — over 13% of total commission from a single
relationship. Lead source analysis confirms this pattern broadly:
Existing Clients and Referrals generate far more commission per deal
than cold advertising or portal leads.

**3. The buyer journey isn't always linear.**
Most closed deals went through at least one property showing before a
meeting, but a meaningful minority skip straight to negotiation —
buyers who already trust the firm or already know the area. The funnel
schema explicitly allows for both paths.

**4. Two listings have been stuck for 300+ days with no closure.**
Both are commercial-segment properties priced above what current buyer
demand in their area supports — a direct, data-backed argument for a
price conversation with the respective owners.

**5. Commission collection has a short, predictable lag.**
₹8.10L of the ₹1.30Cr total is still pending, but it's concentrated
entirely in deals registered within the last 90 days — normal
collection timing, not a warning sign.

---

## Database Design

**7 tables, no separate agents table** — the firm operates as a single
entity, so tracking "which agent" handled a deal adds nothing.

| Table | Rows | Purpose |
|---|---|---|
| `contacts` | 50 | Unified buyers/sellers — a person can be both, with a self-referential FK for tracking referral chains |
| `properties` | 45 | All 5 property types (Villa, Residential Plot, Commercial Plot, Office, Retail Space) |
| `buyer_requirements` | 40 | What each buyer wants, tracked with an update history since requirements change |
| `requirement_localities` | 86 | Normalised 2–3 locality preferences per requirement |
| `property_showings` | 45 | The optional first-contact step between a property and a buyer |
| `meetings` | 65 | The joint buyer-seller negotiation — separate from showings because it's a fundamentally different business event |
| `transactions` | 31 | Closed sales with commission split by side, status (Pending/Received), and method |


---

## SQL Concepts Applied
DDL (constraints, self-referential FK) · multi-table INSERT with FK
ordering · JOIN (INNER, LEFT, SELF) · CTE with emulated FULL OUTER JOIN ·
window functions (RANK) · GROUP BY/HAVING · CASE-based classification ·
DATEDIFF/DATE_FORMAT time analysis · GROUP_CONCAT · COALESCE for safe
aggregation across optional relationships.

---

## Files
```
maam-real-estate-sql/
├── README.md
├── schema/01_create_tables.sql
├── data/02_insert_data.sql
└── queries/
    ├── 03_portfolio_overview.sql
    ├── 04_buyer_demand.sql
    ├── 05_sales_funnel.sql
    ├── 06_deal_analysis.sql
    ├── 07_commission_revenue.sql
    └── 08_network_clients.sql
```

## Tools
MySQL 8.0 · MySQL Workbench

## Author
**Al Gaddafi Taj** — BBA Data Analytics, Amity University Hyderabad
2+ years commercial and residential real estate sales experience, Hyderabad
