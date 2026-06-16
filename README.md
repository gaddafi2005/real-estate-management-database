# Maam Real Estate — Property Sales Operations Database
## SQL Portfolio Project | Hyderabad, Telangana

> A realistic, end-to-end SQL project modelling the complete sales operations
> of a Hyderabad property brokerage — built on 2+ years of direct industry
> experience in commercial and residential real estate sales.

---

## Business Context

Maam Real Estate acts as an intermediary between property owners and buyers.
The business runs two parallel pipelines simultaneously:
- **Buyer pipeline** — buyers register requirements; we find matching properties
- **Seller pipeline** — owners list properties; we find qualified buyers

Revenue (commission) is earned at registration, from the seller side (1% or 0.5%),
the buyer side (1% or 0.5%), or both — depending on which parties are existing
contacts of the firm.

---

## Database Schema — 7 Tables

| Table | Rows | Description |
|---|---|---|
| `contacts` | 20 | Unified buyers and sellers — a person can be both |
| `properties` | 16 | All property types across Hyderabad micro-markets |
| `buyer_requirements` | 15 | What each buyer is looking for, with update history |
| `requirement_localities` | 40 | Normalised 2-3 locality preferences per requirement |
| `property_showings` | 18 | Properties presented to buyers (optional funnel step) |
| `meetings` | 20 | Joint buyer-seller negotiations arranged by the company |
| `transactions` | 8 | Completed sales with full commission tracking |

### Property Types Covered
Villa · Residential Plot · Commercial Plot · Office · Retail Space

### Key Hyderabad Localities
Jubilee Hills · Banjara Hills · Kokapet · Manikonda · Narsingi · Hitech City ·
Gachibowli · Madhapur · Kompally · Mokila · Medchal · Patancheru · Sangareddy

---

## SQL Concepts Applied

### Foundation
DDL — CREATE TABLE with PKs, FKs, ENUMs, UNIQUE, DEFAULT, self-referential FK
DML — INSERT (multi-row, self-referential ordering), UPDATE, DELETE with conditions
SELECT — WHERE, BETWEEN, IN, NOT IN, LIKE, DISTINCT, ORDER BY, LIMIT

### Joins
INNER JOIN, LEFT JOIN — properties with owners, deals with buyer names
SELF JOIN — referral chain analysis (contacts table joins itself)
Multi-table JOIN — transactions + properties + contacts (3 tables)
FULL OUTER (emulated) — supply vs demand gap per locality

### Set Operators
UNION — combined asset summaries
UNION ALL — pipeline by status across periods

### Functions
String — CONCAT, GROUP_CONCAT, COALESCE for display formatting
Numeric — ROUND, ABS for price and discount calculations
Date — DATEDIFF, CURDATE, DATE_FORMAT for listing age and closing timeline
NULL — COALESCE, NULLIF in financial calculations

### Advanced
CASE — stale listing classification, market status flags, discount tier labels
GROUP BY + HAVING — locality demand with minimum buyer thresholds
Aggregate — COUNT DISTINCT, SUM, AVG, MIN, MAX across deal metrics
Window Functions — RANK() for oldest listing, ROW_NUMBER() for deal sequencing
CTE (WITH) — supply vs demand gap analysis with two CTEs joined

---

## Business Questions Answered

| Question | Where to look |
|---|---|
| What are we currently holding? | Q1 — Active listings query |
| Count and value by type and status | Q2 - Pipeline Summary |
| Which localities do buyers want most? | Q3 — Demand heatmap |
| Where is supply not meeting demand? | Q4 — Supply vs demand CTE |
| How many showings/meetings to close a deal? | Q5 — Buyer journey query |
| Which presentation method converts best? | Q6 — Showing response rates |
| Which listings are going stale? | Q7 — Listing health with RANK() |
| How much discount is being negotiated? | Q8 — Price discount analysis |
| Why are deals falling through? | Q9 — Meeting outcome breakdown |
| What commission is pending vs received? | Q10 — Commission dashboard |
| Which property type earns the most? | Q11 — Revenue by type |
| Which lead source generates the most revenue? | Q12 — Commission by source |
| Who in our network generates business? | Q13 — Referral chain (self join) |

---

## Key Business Insights From the Data

1. **Price gap is the #1 deal killer** — 'No Deal - Price Gap' is the dominant
   meeting outcome for unsold properties. MRE-VL-001 (Jubilee Hills) has had
   two separate buyers fail at the same 50-70L gap.

2. **Referrals generate 3x the commission of ads** — Referral-sourced buyers
   like Kiran Tej Malhotra (₹6.15L commission) and Sunita Krishnan (₹4.65L)
   far outperform portal or advertisement leads.

3. **The direct-to-meeting path is real** — Vamsi Krishna (Manikonda villa)
   went straight to a joint meeting without any prior showing and closed in
   one sitting. The funnel is not always linear.

4. **Double-sided commission strongly correlates with existing clients** —
   All 4 double-sided commission deals involved at least one party who was
   an 'Existing Client'. Commission rate reflects relationship depth.

5. **Two listings need immediate price conversations** — MRE-CP-003 (Sangareddy,
   listed Oct 2023) and MRE-OF-003 (Madhapur, Sep 2023) are 8+ months old
   with no close. Both had multiple enquiries that went nowhere.

---

## Files
```
maam-real-estate-sql/
├── README.md
├── schema/
│   └── 01_create_tables.sql
├── data/
│   └── 02_insert_data.sql
└── queries/
    ├── 03_portfolio_overview.sql
    ├── 04_buyer_demand.sql
    ├── 05_sales_funnel.sql
    ├── 06_deal_analysis.sql
    ├── 07_commission_revenue.sql
    └── 08_network_analysis.sql
```

## Tools
MySQL 8.0 · DB Fiddle (dbfiddle.uk)

## Author
**Al Gaddafi Taj** | BBA Data Analytics, Amity University Hyderabad
2+ years commercial and residential real estate sales, Hyderabad
Property types: Villas · Plots · Offices · Retail Spaces · Commercial Land
