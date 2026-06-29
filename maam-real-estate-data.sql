INSERT INTO contacts
  (full_name,phone,email,contact_type,locality,source,source_agent_name,referred_by_id,notes)
VALUES
-- SELLERS 1–22
('Ravi Shankar Reddy',  '9849100001','ravi.s@gmail.com',       'Seller','Banjara Hills', 'Existing Client',NULL,             NULL,'Long-standing client. Premium villa and plot owner.'),
('Suresh Babu Goud',    '9849100002',NULL,                       'Seller','Kompally',      'Referral',        NULL,             NULL,'Multiple residential plots in north Hyderabad.'),
('Anand Venkatesh',     '9849100003','anand.v@techcorp.com',   'Seller','Hitech City',   'Existing Client',NULL,             NULL,'IT professional. Selling office space investments.'),
('Padma Venkataraman',  '9849100004',NULL,                       'Seller','Jubilee Hills', 'Cold Call',       NULL,             NULL,'We approached her. Owns retail and office.'),
('Srinivas Rao Choudary','9849100005',NULL,                      'Seller','Manikonda',    'Referral',        NULL,             NULL,'Builder network referral. Villa in Kokapet.'),
('Mahesh Kumar Jain',   '9849100006','mahesh.j@gmail.com',     'Seller','Medchal',       'Advertisement',   NULL,             NULL,'Multiple commercial plots near ORR. Ad response.'),
('Deepak Choudhary',    '9849100007',NULL,                       'Seller','Narsingi',      'Referral',        'Ramakrishna Nair',NULL,'Contact and property both via external agent.'),
('Nandini Agarwal',     '9849100008','nandini.a@gmail.com',    'Seller','Manikonda',    'Existing Client',NULL,             NULL,'Multiple plots on city outskirts.'),
('Rajesh Varma',        '9849100009','rajesh.v@gmail.com',     'Seller','Hitech City',   'Existing Client',NULL,             NULL,'HNI. Villa and office investor. Strong network.'),
('Sudha Rani Reddy',    '9849100010',NULL,                       'Seller','Banjara Hills', 'Referral',        NULL,             NULL,'Inherited villa in Banjara Hills.'),
('Vikram Singh Rana',   '9849100011','vikram.s@corp.in',       'Seller','Gachibowli',   'Advertisement',   NULL,             NULL,'Office unit Gachibowli. Responded to our ad.'),
('Preethi Suresh',      '9849100012',NULL,                       'Seller','Kokapet',       'Referral',        NULL,             NULL,'Villa in Kokapet via builder referral.'),
('Sanjay Mehta',        '9849100013','sanjay.m@gmail.com',     'Seller','Jubilee Hills', 'Existing Client',NULL,             NULL,'HNI. Premium villa and retail in Jubilee Hills.'),
('Lalitha Devi Goud',   '9849100014',NULL,                       'Seller','Kompally',      'Referral',        NULL,             NULL,'Plots in Kompally and Shadnagar.'),
('Arun Krishnamurthy',  '9849100015','arun.k@gmail.com',       'Seller','Nanakramguda', 'Existing Client',NULL,             NULL,'Grade A office investor in Nanakramguda.'),
('Bhavana Reddy Naik',  '9849100016',NULL,                       'Seller','Kondapur',      'Cold Call',       NULL,             NULL,'Residential plot Kondapur. We cold-called her.'),
('Sunil Babu Choudary', '9849100017','sunil.b@gmail.com',      'Seller','Medchal',       'Advertisement',   NULL,             NULL,'Commercial plot ORR Phase 3.'),
('Geeta Sharma',        '9849100018',NULL,                       'Seller','Patancheru',    'Referral',        'Venkata Rao',     NULL,'IDA plot sourced via external agent Venkata Rao.'),
('Prasad Rao Nair',     '9849100019','prasad.r@gmail.com',     'Seller','Narsingi',      'Existing Client',NULL,             NULL,'Villa in Narsingi. Under construction.'),
('Kalpana Joshi',       '9849100020',NULL,                       'Seller','Shamirpet',     'Cold Call',       NULL,             NULL,'Small plot near Shamirpet Lake.'),
('Mohan Lal Verma',     '9849100021','mohan.l@gmail.com',      'Seller','Uppal',          'Advertisement',   NULL,             NULL,'Residential plot Uppal ORR corridor.'),
('Sandhya Reddy',       '9849100022',NULL,                       'Seller','Kukatpally',    'Referral',        NULL,             NULL,'Retail space KPHB colony. Friend referral.'),
-- BUYERS 23–42
('Kiran Tej Malhotra',  '9849100023','kiran.m@outlook.com',    'Buyer', 'Gurgaon',       'Referral',        NULL,             1,   'Relocating to HYD. HNI investor. Referred by Ravi Shankar.'),
('Aditya Sharma',       '9849100024','aditya.s@gmail.com',     'Buyer', 'Ameerpet',      'Property Portal', NULL,             NULL,'First-time buyer. Retail space for own business.'),
('Sunita Krishnan',     '9849100025',NULL,                       'Buyer', 'Kondapur',      'Referral',        NULL,             NULL,'Villa for personal use. Flexible budget.'),
('Vamsi Krishna Reddy', '9849100026','vamsi.k@gmail.com',      'Buyer', 'Manikonda',     'Existing Client',NULL,             NULL,'Upgrading from apartment to villa.'),
('Rohit Gupta',         '9849100027','rohit.g@corp.in',        'Buyer', 'Delhi',          'Advertisement',   NULL,             NULL,'NRI investor. Commercial land near ORR.'),
('Lakshmi Prasad Naidu','9849100028',NULL,                       'Buyer', 'Banjara Hills', 'Referral',        NULL,             4,   'Ultra HNI. Premium villa/office. Referred by Padma.'),
('Faisal Ahmed',        '9849100029','faisal.a@biz.com',       'Buyer', 'Hyderabad',     'Walk-in',         NULL,             NULL,'Retail business owner. Wants Banjara Hills space.'),
('Harish Naidu',        '9849100030',NULL,                       'Buyer', 'Kokapet',       'Referral',        NULL,             26,  'Plot to build own house. Referred by Vamsi.'),
('Tejashwini Patel',    '9849100031','teju.p@gmail.com',       'Buyer', 'Kompally',      'Referral',        NULL,             2,   'Young couple. North HYD plot. Referred by Suresh.'),
('Priya Nambiar',       '9849100032',NULL,                       'Buyer', 'Hyderabad',     'Property Portal', NULL,             NULL,'Looking for retail space Ameerpet/Kukatpally.'),
('Siddharth Rao',       '9849100033','sid.r@gmail.com',        'Buyer', 'Hyderabad',     'Referral',        NULL,             9,   'Office investment. Referred by Rajesh Varma.'),
('Anisha Kapoor',       '9849100034','anisha.k@gmail.com',     'Buyer', 'Mumbai',         'Advertisement',   NULL,             NULL,'NRI. Looking for villa in premium locality.'),
('Venkat Subramaniam',  '9849100035','venkat.s@gmail.com',     'Buyer', 'Hyderabad',     'Referral',        NULL,             15,  'Grade A office buyer. Referred by Arun Krishnamurthy.'),
('Dhruv Mehta',         '9849100036','dhruv.m@gmail.com',      'Buyer', 'Hyderabad',     'Property Portal', NULL,             NULL,'Residential plot south Hyderabad.'),
('Farhan Qureshi',      '9849100037',NULL,                       'Buyer', 'Hyderabad',     'Walk-in',         NULL,             NULL,'Walk-in. Looking for retail or small office.'),
('Pooja Iyer',          '9849100038',NULL,                       'Buyer', 'Hyderabad',     'Referral',        NULL,             25,  'Villa buyer. Referred by Sunita Krishnan.'),
('Sharath Reddy',       '9849100039','sharath.r@gmail.com',    'Buyer', 'Hyderabad',     'Existing Client',NULL,             NULL,'Past buyer. Now looking for commercial plot.'),
('Nikhil Jain',         '9849100040','nikhil.j@gmail.com',     'Buyer', 'Hyderabad',     'Property Portal', NULL,             NULL,'First investment. Modest budget. Residential plot.'),
('Mala Shetty',         '9849100041',NULL,                       'Buyer', 'Bengaluru',     'Advertisement',   NULL,             NULL,'Relocating to HYD. Looking for villa.'),
('Tariq Hassan',        '9849100042','tariq.h@gmail.com',      'Buyer', 'Hyderabad',     'Referral',        NULL,             29,  'Retail space buyer. Referred by Faisal Ahmed.'),
-- BOTH 43–50
('Ramesh Chandra Rao',  '9849100043','ramesh.r@gmail.com',     'Both',  'Hyderabad',     'Existing Client',NULL,             NULL,'Sold villa Manikonda. Now buying premium villa.'),
('Naveen Kumar Reddy',  '9849100044','naveen.r@rediffmail.com','Both',  'Ameerpet',      'Existing Client',NULL,             NULL,'Sold retail space. Now buying commercial plot.'),
('Kavitha Murthy',      '9849100045',NULL,                       'Both',  'Kukatpally',    'Referral',        NULL,             43,  'Selling plot. Buying commercial land. Referred by Ramesh.'),
('Pradeep Singhania',   '9849100046','pradeep.s@biz.com',      'Both',  'Hyderabad',     'Existing Client',NULL,             NULL,'Developer. Buys land, develops and sells.'),
('Rekha Devi Naik',     '9849100047',NULL,                       'Both',  'Hyderabad',     'Referral',        NULL,             1,   'Selling inherited plot. Buying villa. Referred by Ravi.'),
('Chandra Sekhar Goud', '9849100048','chandra.g@gmail.com',    'Both',  'Hyderabad',     'Existing Client',NULL,             NULL,'Long-term client. Multiple buy-sell transactions.'),
('Neha Bajaj',          '9849100049','neha.b@gmail.com',       'Both',  'Hyderabad',     'Property Portal',NULL,             NULL,'Sold office unit. Now buying retail space.'),
('Vijay Kishore Reddy', '9849100050','vijay.k@gmail.com',      'Both',  'Hyderabad',     'Referral',        NULL,             9,   'Sold commercial plot. Buying office. Referred by Rajesh.');

INSERT INTO properties
  (listing_code,owner_id,source_agent_name,property_type,locality,address,
   area_value,area_unit,asking_price,possession_status,expected_completion,
   bedrooms,floors,road_facing,road_width_ft,is_corner_plot,
   seller_terms,listed_date,status,notes)
VALUES
-- VILLAS (12)
('MRE-VL-001',1, NULL,              'Villa','Jubilee Hills','Road No. 36, Jubilee Hills',           3800,'sqft',   45000000,'Ready',            NULL,        4,3,'East', 40,1,'No loan cases. Registration within 60 days.',          '2023-08-15','Under Negotiation','Corner villa. Owner firm on price. 2 buyers failed at price gap.'),
('MRE-VL-002',5, NULL,              'Villa','Kokapet',      'Green Valley Township, Kokapet',         3200,'sqft',   32000000,'Ready',            NULL,        3,2,'North',30,0,'Ready for immediate registration.',                    '2023-11-01','Sold',             'Sold to Sunita Krishnan. 2-meeting close.'),
('MRE-VL-003',7, 'Ramakrishna Nair','Villa','Narsingi',      'Narsingi Road, Near ORR Exit 14',        2600,'sqft',   28000000,'Under Construction','2025-03-31',3,2,'NE',   30,0,'Interior customisation possible.',                     '2024-02-10','Active',           'Sourced via external agent. 1 buyer withdrew.'),
('MRE-VL-004',43,NULL,              'Villa','Manikonda',    'Silver Oak Layout, Manikonda',           2400,'sqft',   19000000,'Ready',            NULL,        3,2,'East', 30,0,'Loan cases considered.',                              '2024-01-15','Sold',             'Direct meeting, no prior showing. 1-meeting close.'),
('MRE-VL-005',10,NULL,              'Villa','Banjara Hills','Rd No. 10, Banjara Hills',              4200,'sqft',   55000000,'Ready',            NULL,        4,3,'East', 40,0,'Inherited property. Flexible on timeline.',            '2023-03-01','Sold',             'Premium deal. 2 meetings. Relocating NRI buyer.'),
('MRE-VL-006',12,NULL,              'Villa','Kokapet',      'Prestige Glenwood, Kokapet',             2800,'sqft',   26000000,'Ready',            NULL,        3,2,'NE',   30,0,'Ready. Builder OC available.',                        '2023-05-10','Sold',             'Sold to Pooja Iyer. 2 meetings.'),
('MRE-VL-007',13,NULL,              'Villa','Jubilee Hills','Rd No. 45, Jubilee Hills',              5500,'sqft',   72000000,'Ready',            NULL,        5,3,'East', 40,1,'Cash only. No loan cases. 45 days registration.',      '2023-02-01','Sold',             'Biggest villa deal. Sold to Lakshmi Prasad.'),
('MRE-VL-008',19,NULL,              'Villa','Narsingi',      'Aparna Serene Park, Narsingi',           3100,'sqft',   31000000,'Under Construction','2024-12-31',4,3,'NW',   30,0,'Builder warranty. Interior choice available.',          '2024-01-20','Active',           'Under construction. 2 showings, no meeting yet.'),
('MRE-VL-009',8, NULL,              'Villa','Manikonda',    'Ramky Towers, Manikonda',                2100,'sqft',   17500000,'Ready',            NULL,        3,2,'East', 30,0,'Loan cases considered.',                              '2023-04-10','Sold',             'Quick sale. 1 meeting. Both already known.'),
('MRE-VL-010',9, NULL,              'Villa','Kokapet',      'My Home Bhooja, Kokapet',                3600,'sqft',   38000000,'Ready',            NULL,        4,3,'East', 40,0,'Ready. No loan. 30-day registration.',                 '2023-06-15','Sold',             'Sold to Anisha Kapoor (NRI). 3 meetings.'),
('MRE-VL-011',1, NULL,              'Villa','Banjara Hills','Rd No. 12, Banjara Hills',              6000,'sqft',   85000000,'Ready',            NULL,        5,4,'East', 40,1,'Ultra premium. Cash. 30-day close.',                   '2023-10-01','Under Negotiation','Lakshmi Prasad interested but 1Cr gap remains.'),
('MRE-VL-012',7, 'Ramakrishna Nair','Villa','Narsingi',      'Ameenpur Road, Narsingi',                2900,'sqft',   31000000,'Ready',            NULL,        3,2,'NE',   33,0,'Negotiable. Ready.',                                   '2024-05-10','Active',           'New listing via same external agent.'),
-- RESIDENTIAL PLOTS (13)
('MRE-RP-001',2, NULL,'Residential Plot','Kompally',     'Kompally Main Road, Sector 5',           200, 'sqyards',8500000, 'Ready',NULL,NULL,NULL,'North',40,0,'HMDA approved. Clear title.',              '2024-03-01','Sold',            'Quick 2-meeting deal. Both parties known.'),
('MRE-RP-002',2, NULL,'Residential Plot','Shamirpet',    'Shamirpet Lake Road',                    150, 'sqyards',4200000, 'Ready',NULL,NULL,NULL,'East', 33,0,'Peaceful area. Retirement home potential.','2023-12-15','Active',          '1 showing, buyer said maybe. No follow-up.'),
('MRE-RP-003',8, NULL,'Residential Plot','Mokila',       'Mokila-Gandipet Road',                   267, 'sqyards',12000000,'Ready',NULL,NULL,NULL,'NE',   40,1,'DTCP approved. Corner plot.',              '2024-03-20','Sold',            'Corner plot premium. 2-meeting close.'),
('MRE-RP-004',8, NULL,'Residential Plot','Shadnagar',    'Shadnagar Growth Corridor',              120, 'sqyards',2800000, 'Ready',NULL,NULL,NULL,'East', 30,0,'HMDA approved. Appreciation area.',       '2024-05-01','Active',          'New listing. No showings yet.'),
('MRE-RP-005',14,NULL,'Residential Plot','Kompally',     'Kompally Bypass, Phase 2',               180, 'sqyards',6500000, 'Ready',NULL,NULL,NULL,'East', 33,0,'Clear title. HMDA.',                      '2023-01-20','Sold',            'Early 2023 deal. Quick closure.'),
('MRE-RP-006',14,NULL,'Residential Plot','Kompally',     'Kompally Main Road, Sector 9',           220, 'sqyards',7800000, 'Ready',NULL,NULL,NULL,'North',40,1,'Corner plot. HMDA.',                      '2023-03-05','Sold',            'Corner premium. First of two Dhruv purchases.'),
('MRE-RP-007',14,NULL,'Residential Plot','Shadnagar',    'Shadnagar ORR Exit 12',                  100, 'sqyards',3500000, 'Ready',NULL,NULL,NULL,'East', 30,0,'Govt layout. HMDA.',                      '2023-08-10','Sold',            'Dhruv second plot, same seller.'),
('MRE-RP-008',16,NULL,'Residential Plot','Kondapur',     'HUDA Colony, Kondapur',                  300, 'sqyards',15000000,'Ready',NULL,NULL,NULL,'East', 40,0,'Prime area. 60-day close.',                '2023-04-15','Sold',            'Premium Kondapur plot. Existing client buyer.'),
('MRE-RP-009',20,NULL,'Residential Plot','Shamirpet',    'Shamirpet Main Road',                    130, 'sqyards',3800000, 'Ready',NULL,NULL,NULL,'North',30,0,'Small plot. Clear title.',                 '2023-01-10','Sold',            'Walk-in buyer switched from retail search.'),
('MRE-RP-010',21,NULL,'Residential Plot','Uppal',        'Uppal ORR Corridor',                     175, 'sqyards',5500000, 'Ready',NULL,NULL,NULL,'East', 33,0,'HMDA. East ORR corridor.',                  '2023-06-01','Sold',            'Good value area. 2 meetings.'),
('MRE-RP-011',47,NULL,'Residential Plot','Mokila',       'Mokila Near ORR Exit 13',                200, 'sqyards',9500000, 'Ready',NULL,NULL,NULL,'NE',   40,0,'DTCP approved.',                          '2023-09-01','Sold',            'Rekha selling inherited plot. Both sides known.'),
('MRE-RP-012',2, NULL,'Residential Plot','Kompally',     'Kompally North, Sector 12',              160, 'sqyards',7200000, 'Ready',NULL,NULL,NULL,'North',33,0,'HMDA. Good for construction.',             '2024-02-10','Active',         'In discussion. 1 interested buyer.'),
('MRE-RP-013',5, NULL,'Residential Plot','Narsingi',     'Narsingi Pharma City Road',              250, 'sqyards',11000000,'Ready',NULL,NULL,NULL,'East', 40,0,'HMDA. Near pharma city.',                  '2024-06-01','Active',         'New listing. Price under discussion.'),
-- COMMERCIAL PLOTS (7)
('MRE-CP-001',6, NULL,'Commercial Plot', 'Medchal',      'Medchal ORR Service Road',               2000,'sqyards',25000000,'Ready',NULL,NULL,NULL,'East', 60,0,'HMDA industrial zone.',                   '2024-02-01','Sold',            'NRI investor. 3 meetings.'),
('MRE-CP-002',8, NULL,'Commercial Plot', 'Patancheru',   'IDA Patancheru Phase 2',                 3500,'sqyards',18000000,'Ready',NULL,NULL,NULL,'North',60,1,'IDA approved. 3-phase power.',             '2024-01-20','Active',         'Kavitha interested. In discussion.'),
('MRE-CP-003',6, NULL,'Commercial Plot', 'Sangareddy',   'Sangareddy Industrial Area',             5000,'sqyards',31000000,'Ready',NULL,NULL,NULL,'East', 80,0,'Large industrial plot. Pharma city adjacent.','2023-10-15','Active',         '8+ months listed. Price revision discussion.'),
('MRE-CP-004',17,NULL,'Commercial Plot', 'Medchal',      'Medchal ORR Phase 3',                    1500,'sqyards',19500000,'Ready',NULL,NULL,NULL,'North',60,0,'HMDA. Logistics suitable.',                '2023-04-01','Sold',            'Naveen reinvesting after retail sale.'),
('MRE-CP-005',18,NULL,'Commercial Plot', 'Patancheru',   'IDA Patancheru Phase 1',                 2800,'sqyards',22000000,'Ready',NULL,NULL,NULL,'East', 60,0,'IDA. 3-phase. Via external agent.',         '2023-06-10','Sold',            'Pradeep deal 1 of 3 this year.'),
('MRE-CP-006',6, NULL,'Commercial Plot', 'Medchal',      'Medchal Main Road',                      2500,'sqyards',35000000,'Ready',NULL,NULL,NULL,'East', 60,1,'Corner. Premium industrial zone.',         '2023-01-15','Sold',            'Pradeep deal 2 of 3.'),
('MRE-CP-007',46,NULL,'Commercial Plot', 'Sangareddy',   'Sangareddy NH-65 Road',                  3000,'sqyards',28000000,'Ready',NULL,NULL,NULL,'East', 80,0,'NH frontage. Premium location.',           '2023-08-20','Sold',            'Pradeep selling from developer portfolio.'),
-- OFFICES (8)
('MRE-OF-001',3, NULL,'Office','Hitech City',  'Maximus Towers, Hitech City',             4500,'sqft',   42000000,'Ready',NULL,NULL,12,'East', NULL,0,'Furnished. IGBC certified. No tenants.',  '2024-01-10','Sold',            'Premium deal. 3 meetings.'),
('MRE-OF-002',3, NULL,'Office','Gachibowli',  'DivyaSree NSL Arena, Gachibowli',        3800,'sqft',   35000000,'Ready',NULL,NULL,10,'North',NULL,0,'Grade A. Semi-furnished. 2 parking slots.','2024-02-15','Active',         'In discussion with Lakshmi Prasad.'),
('MRE-OF-003',4, NULL,'Office','Madhapur',    'Cyber Pearl, Madhapur',                   2200,'sqft',   21000000,'Ready',NULL,NULL,8, 'East', NULL,0,'Smaller unit. 20-25 person capacity.',    '2023-09-01','Active',         '9+ months. Price revision needed.'),
('MRE-OF-004',15,NULL,'Office','Nanakramguda','Skyview 10, Nanakramguda',               5500,'sqft',   55000000,'Ready',NULL,NULL,14,'East', NULL,0,'LEED platinum. Furnished. Premium.',      '2023-02-01','Sold',            'Biggest office deal year 1. Referral buyer.'),
('MRE-OF-005',9, NULL,'Office','Hitech City',  'RMZ Millennia, Hitech City',             3800,'sqft',   38000000,'Ready',NULL,NULL,10,'East', NULL,0,'Premium building. Furnished.',            '2023-05-10','Sold',            'Sold to Siddharth Rao (referral buyer).'),
('MRE-OF-006',11,NULL,'Office','Gachibowli',  'WaveRock, Gachibowli',                   2800,'sqft',   29000000,'Ready',NULL,NULL,8, 'North',NULL,0,'Semi-furnished. Single parking.',         '2023-01-05','Sold',            'Repeat client second purchase.'),
('MRE-OF-007',15,NULL,'Office','Nanakramguda','Financial District, Nanakramguda',       4200,'sqft',   41000000,'Ready',NULL,NULL,11,'East', NULL,0,'Grade A. LEED certified.',                '2023-08-15','Sold',            'Venkat Subramaniam. Referral close.'),
('MRE-OF-008',50,NULL,'Office','Hitech City',  'Laxmi Cyber City, Hitech City',          6000,'sqft',   62000000,'Ready',NULL,NULL,15,'East', NULL,0,'Largest floor plate. IGBC Gold.',         '2023-03-10','Sold',            'Biggest single deal. Pradeep deal 3 of 3.'),
-- RETAIL SPACES (5)
('MRE-RS-001',4, NULL,'Retail Space','Banjara Hills','Road No. 12, Banjara Hills',            1100,'sqft',   18000000,'Ready',NULL,NULL,NULL,'South',NULL,0,'High street. Ground floor. Excellent footfall.','2023-12-01','Sold','Walk-in buyer. Seller commission only.'),
('MRE-RS-002',44,NULL,'Retail Space','Ameerpet',    'Metro Pillar 112, Ameerpet',             650, 'sqft',   9500000, 'Ready',NULL,NULL,NULL,'East', NULL,0,'Metro adjacent. Ground floor.',             '2023-11-20','Sold','Naveen (seller) also our buyer elsewhere.'),
('MRE-RS-003',13,NULL,'Retail Space','Jubilee Hills','Rd No. 36 Junction, Jubilee Hills',      950, 'sqft',   24000000,'Ready',NULL,NULL,NULL,'East', NULL,0,'Corner shop. Premium location.',            '2023-01-10','Sold','Sanjay Mehta selling. Premium retail.'),
('MRE-RS-004',22,NULL,'Retail Space','Kukatpally',  'KPHB Colony Main Road, Kukatpally',      700, 'sqft',   8500000, 'Ready',NULL,NULL,NULL,'East', NULL,0,'Good footfall area. Negotiable.',           '2023-03-15','Sold','Found via property portal.'),
('MRE-RS-005',1, NULL,'Retail Space','Banjara Hills','Rd No. 2, Banjara Hills',               1400,'sqft',   32000000,'Ready',NULL,NULL,NULL,'East', NULL,0,'Prime Rd No. 2. Cash only.',               '2024-04-01','Under Negotiation','Tariq Hassan very interested. Price gap of 2L.');

INSERT INTO buyer_requirements
  (buyer_id,property_type,budget_min,budget_max,area_min,area_max,area_unit,
   possession_preference,bedrooms_min,buyer_terms,status,created_date,last_updated_date,notes)
VALUES
-- FULFILLED (31) — one per sold property
(23,'Office',          35000000,50000000,3500,6000,'sqft',   'Ready Only',NULL,'Furnished or semi-furnished. Premium building only.','Fulfilled','2023-12-01','2024-01-05','Bought MRE-OF-001 after 3 rounds.'),
(25,'Villa',           28000000,34000000,3000,3500,'sqft',   'Ready Only',3,   'Ready to move. East facing preferred.',              'Fulfilled','2023-10-15','2024-02-20','Bought MRE-VL-002. Earlier dropped MRE-VL-003 (under construction risk).'),
(26,'Villa',           16000000,20000000,2200,2600,'sqft',   'Ready Only',3,   'Loan ok. Quick registration.',                        'Fulfilled','2024-01-02',NULL,        'Bought MRE-VL-004. Went direct to meeting, no prior showing.'),
(41,'Villa',           48000000,58000000,3800,4500,'sqft',   'Ready Only',4,   'Relocating from Bengaluru. Cash deal preferred.',    'Fulfilled','2023-01-10','2023-02-25','Bought MRE-VL-005. Premium Banjara Hills villa.'),
(38,'Villa',           22000000,28000000,2600,3000,'sqft',   'Ready Only',3,   'Builder OC mandatory.',                              'Fulfilled','2023-04-01',NULL,        'Bought MRE-VL-006. Referred by Sunita Krishnan.'),
(28,'Villa',           65000000,78000000,5000,6000,'sqft',   'Ready Only',5,   'Cash only. Premium localities only.',                'Fulfilled','2023-01-05','2023-01-28','Bought MRE-VL-007. First of several HNI purchases.'),
(47,'Villa',           15000000,19000000,1900,2300,'sqft',   'Ready Only',3,   'Open to loan. Quick close preferred.',               'Fulfilled','2023-03-20',NULL,        'Bought MRE-VL-009. Sold her own plot around the same time.'),
(34,'Villa',           34000000,40000000,3200,3800,'sqft',   'Ready Only',4,   'NRI buyer. Remote negotiation, in-person registration.','Fulfilled','2023-05-01','2023-06-10','Bought MRE-VL-010. 3 rounds, video call negotiations.'),
(31,'Residential Plot',7000000, 9500000, 180, 220,'sqyards','Ready Only',NULL,'HMDA approved only. North Hyderabad.',             'Fulfilled','2024-02-20','2024-03-20','Bought MRE-RP-001. Young couple, first investment.'),
(30,'Residential Plot',10000000,13000000,240,280,'sqyards','Ready Only',NULL,'Corner plot preferred. DTCP approved.',             'Fulfilled','2024-04-05',NULL,        'Bought MRE-RP-003. Corner plot was the deciding factor.'),
(40,'Residential Plot',6000000, 8500000, 150, 200,'sqyards','Ready Only',NULL,'First investment. Budget conscious.',              'Fulfilled','2023-01-02',NULL,        'Bought MRE-RP-005.'),
(36,'Residential Plot',6500000, 9000000, 180, 230,'sqyards','Ready Only',NULL,'Investor. Open to multiple plots.',                'Fulfilled','2023-02-15',NULL,        'Bought MRE-RP-006. First of two plot purchases.'),
(36,'Residential Plot',3000000, 4500000, 90,  130,'sqyards','Ready Only',NULL,'Second plot. Smaller budget segment.',             'Fulfilled','2023-07-20',NULL,        'Bought MRE-RP-007.'),
(39,'Residential Plot',13000000,16000000,280,320,'sqyards','Ready Only',NULL,'Existing client. Premium plot.',                  'Fulfilled','2023-03-10',NULL,        'Bought MRE-RP-008.'),
(37,'Residential Plot',3000000, 4200000, 110, 150,'sqyards','Any',       NULL,'Budget revised down from retail search.',          'Fulfilled','2022-12-20','2023-01-05','Originally wanted retail, switched to plot on budget. Bought MRE-RP-009.'),
(42,'Residential Plot',5000000, 6500000, 160, 200,'sqyards','Ready Only',NULL,'HMDA. East corridor.',                              'Fulfilled','2023-05-15',NULL,        'Bought MRE-RP-010. Returned later for retail search (req 37).'),
(45,'Residential Plot',8500000, 11000000,180,220,'sqyards','Ready Only',NULL,'Existing network buyer.',                         'Fulfilled','2023-07-25',NULL,        'Bought MRE-RP-011 from Rekha Devi Naik — both known contacts.'),
(27,'Commercial Plot', 20000000,26000000,1800,2200,'sqyards','Ready Only',NULL,'HMDA/IDA approved only. Near ORR.',                'Fulfilled','2023-12-20','2024-01-25','Bought MRE-CP-001. NRI investor, video call negotiations.'),
(44,'Commercial Plot', 17000000,21000000,1300,1700,'sqyards','Ready Only',NULL,'Post retail sale reinvestment.',                  'Fulfilled','2023-02-10',NULL,        'Bought MRE-CP-004 shortly after selling his retail space.'),
(46,'Commercial Plot', 19000000,24000000,2500,3000,'sqyards','Ready Only',NULL,'Developer. Bulk land acquisition.',               'Fulfilled','2023-04-20',NULL,        'Bought MRE-CP-005. First of three purchases this year.'),
(46,'Commercial Plot', 30000000,37000000,2200,2700,'sqyards','Ready Only',NULL,'Developer. Corner / premium preferred.',           'Fulfilled','2022-12-10',NULL,        'Bought MRE-CP-006.'),
(48,'Commercial Plot', 25000000,30000000,2800,3200,'sqyards','Ready Only',NULL,'Repeat client. NH frontage preferred.',            'Fulfilled','2023-07-01',NULL,        'Bought MRE-CP-007.'),
(50,'Office',          50000000,60000000,5000,6500,'sqft',   'Ready Only',NULL,'LEED certified only. Furnished.',                  'Fulfilled','2022-12-15',NULL,        'Bought MRE-OF-004. Largest office deal that year.'),
(33,'Office',          33000000,40000000,3500,4000,'sqft',   'Ready Only',NULL,'Referral buyer. Premium building.',                'Fulfilled','2023-03-20',NULL,        'Bought MRE-OF-005.'),
(48,'Office',          26000000,31000000,2600,3000,'sqft',   'Ready Only',NULL,'Repeat client. Second purchase.',                 'Fulfilled','2022-11-01',NULL,        'Bought MRE-OF-006.'),
(35,'Office',          36000000,44000000,4000,4500,'sqft',   'Ready Only',NULL,'Referred by Arun Krishnamurthy. Grade A only.',    'Fulfilled','2023-06-15',NULL,        'Bought MRE-OF-007.'),
(46,'Office',          55000000,65000000,5500,6500,'sqft',   'Ready Only',NULL,'Developer diversifying into office.',              'Fulfilled','2023-01-10',NULL,        'Bought MRE-OF-008. Third purchase, biggest single deal.'),
(29,'Retail Space',   16000000,19000000,1000,1300,'sqft',   'Ready Only',NULL,'High street only. Cash deal.',                     'Fulfilled','2023-10-10',NULL,        'Bought MRE-RS-001. Walk-in client.'),
(24,'Retail Space',   7000000, 10000000,550,750,'sqft',   'Ready Only',NULL,'Ground floor only. First-time buyer.',            'Fulfilled','2023-10-25',NULL,        'Bought MRE-RS-002. Quick single-meeting deal.'),
(49,'Retail Space',   20000000,26000000,850,1050,'sqft',  'Ready Only',NULL,'Premium corner shop preferred.',                  'Fulfilled','2022-12-05',NULL,        'Bought MRE-RS-003. Sold an office unit prior.'),
(32,'Retail Space',   7000000, 9500000, 600,800,'sqft',   'Ready Only',NULL,'Good footfall area. Negotiable.',                'Fulfilled','2023-02-01',NULL,        'Bought MRE-RS-004.'),
-- ACTIVE (6)
(23,'Villa',           40000000,65000000,3000,5000,'sqft',   'Ready Only',4,   'Personal use after relocating to Hyderabad.',        'Active','2024-05-20',NULL,        'New search after OF-001 purchase. 2 showings so far.'),
(28,'Villa',           40000000,45000000,3500,4200,'sqft',   'Ready Only',4,   'Ultra-premium only. Cash deal.',                    'Active','2024-03-01','2024-05-15','VL-001 shown. 50L price gap persists.'),
(28,'Villa',           75000000,85000000,5500,6500,'sqft',   'Ready Only',5,   'No compromise on locality or size.',                'Active','2023-09-15','2024-05-01','VL-011 under discussion. 1Cr gap remains.'),
(28,'Office',          30000000,35000000,3500,4000,'sqft',   'Ready Only',NULL,'Grade A building. Western corridor only.',        'Active','2024-02-20',NULL,        'OF-002 in early discussion.'),
(45,'Commercial Plot', 16000000,22000000,3000,3800,'sqyards','Ready Only',NULL,'Exploring commercial development.',               'Active','2024-01-25','2024-04-10','CP-002 under discussion. Budget being finalised.'),
(42,'Retail Space',   13000000,16000000,700,900,'sqft',   'Ready Only',NULL,'Prime high street. Cash deal.',                    'Active','2024-03-10',NULL,        'RS-005 negotiation ongoing. 2L price gap.'),
-- ON HOLD (2)
(33,'Office',          20000000,28000000,2000,2800,'sqft',   'Ready Only',NULL,'Second office investment, smaller scale.',        'On Hold','2023-09-01','2024-03-01','Paused after OF-005 purchase. May resume Q3.'),
(36,'Commercial Plot', 15000000,22000000,1500,2500,'sqyards','Ready Only',NULL,'Considering commercial after 2 plot purchases.',  'On Hold','2023-10-01','2024-01-15','On hold while evaluating capital allocation.'),
-- CANCELLED (1)
(43,'Villa',           60000000,90000000,4500,6000,'sqft',   'Ready Only',5,   'Wanted significant upgrade after selling Manikonda villa.','Cancelled','2023-11-01','2024-02-01','Decided to stay in current rental. Search cancelled.');

INSERT INTO requirement_localities (requirement_id, locality) VALUES
(1,'Hitech City'),(1,'Gachibowli'),(1,'Madhapur'),
(2,'Kokapet'),(2,'Manikonda'),
(3,'Manikonda'),(3,'Kokapet'),
(4,'Banjara Hills'),(4,'Jubilee Hills'),
(5,'Kokapet'),(5,'Gandipet'),
(6,'Jubilee Hills'),(6,'Banjara Hills'),
(7,'Manikonda'),(7,'Kokapet'),
(8,'Kokapet'),(8,'Manikonda'),(8,'Narsingi'),
(9,'Kompally'),(9,'Shamirpet'),
(10,'Mokila'),(10,'Gandipet'),(10,'Narsingi'),
(11,'Kompally'),(11,'Shamirpet'),
(12,'Kompally'),(12,'Medchal'),
(13,'Shadnagar'),(13,'Kompally'),
(14,'Kondapur'),(14,'Gachibowli'),
(15,'Shamirpet'),(15,'Kompally'),
(16,'Uppal'),(16,'Medchal'),
(17,'Mokila'),(17,'Narsingi'),
(18,'Medchal'),(18,'Patancheru'),(18,'Sangareddy'),
(19,'Medchal'),(19,'Patancheru'),
(20,'Patancheru'),(20,'Sangareddy'),(20,'Medchal'),
(21,'Medchal'),(21,'Patancheru'),
(22,'Sangareddy'),(22,'Patancheru'),
(23,'Nanakramguda'),(23,'Hitech City'),
(24,'Hitech City'),(24,'Gachibowli'),
(25,'Gachibowli'),(25,'Hitech City'),
(26,'Nanakramguda'),(26,'Gachibowli'),
(27,'Hitech City'),(27,'Nanakramguda'),
(28,'Banjara Hills'),(28,'Jubilee Hills'),
(29,'Ameerpet'),(29,'Kukatpally'),
(30,'Jubilee Hills'),(30,'Banjara Hills'),
(31,'Kukatpally'),(31,'Ameerpet'),
(32,'Jubilee Hills'),(32,'Banjara Hills'),(32,'Kokapet'),
(33,'Jubilee Hills'),(33,'Banjara Hills'),
(34,'Banjara Hills'),(34,'Jubilee Hills'),
(35,'Gachibowli'),(35,'Hitech City'),
(36,'Patancheru'),(36,'Medchal'),
(37,'Banjara Hills'),(37,'Jubilee Hills'),
(38,'Hitech City'),(38,'Gachibowli'),
(39,'Medchal'),(39,'Patancheru'),
(40,'Jubilee Hills'),(40,'Banjara Hills');

INSERT INTO property_showings
  (requirement_id,property_id,showing_date,method,buyer_response,notes)
VALUES
(1, 34,'2023-11-10','Photos/Video Shared','Maybe',          'Considered OF-002 first, preferred OF-001 ultimately.'),
(1, 33,'2023-12-05','Site Visit',         'Interested',     'Visited Maximus Towers. Loved the building.'),
(2, 3, '2023-10-20','Photos/Video Shared','Not Interested', 'Under-construction concern. Dropped VL-003.'),
(2, 2, '2024-01-05','Site Visit',         'Interested',     'Visited with family. Very positive.'),
(4, 5, '2023-01-15','Photos/Video Shared','Interested',     'Liked Banjara Hills location immediately.'),
(5, 6, '2023-03-10','Site Visit',         'Interested',     'Visited with brother.'),
(6, 7, '2023-01-10','Site Visit',         'Interested',     'First HNI villa visit.'),
(6, 1, '2022-12-15','Photos/Video Shared','Not Interested', 'Considered VL-001 before VL-007. Preferred VL-007 layout.'),
(7, 9, '2023-03-01','Photos/Video Shared','Interested',     'Liked Manikonda layout.'),
(8, 10,'2023-04-15','Location Shared',    'Interested',     'NRI buyer. Pin shared, video walkthrough later.'),
(9, 13,'2024-02-25','Photos/Video Shared','Interested',     'Liked HMDA approval status.'),
(10,15,'2024-03-20','Site Visit',         'Interested',     'Corner plot impressed on visit.'),
(11,17,'2022-12-20','Photos/Video Shared','Interested',     'Quick decision, budget fit well.'),
(12,18,'2023-01-25','Photos/Video Shared','Interested',     'First plot purchase decision.'),
(13,19,'2023-06-15','Location Shared',    'Maybe',           'Considering second plot, smaller budget.'),
(14,20,'2023-02-20','Site Visit',         'Interested',     'Premium Kondapur plot visit.'),
(15,21,'2022-12-10','Photos/Video Shared','Interested',     'Switched from retail search due to budget.'),
(16,22,'2023-04-25','Photos/Video Shared','Interested',     'East ORR corridor appealed to him.'),
(17,23,'2023-07-10','Location Shared',    'Interested',     'Already knew the seller (Rekha).'),
(18,26,'2023-12-25','Location Shared',    'Interested',     'NRI. Pin shared, video call follow-up.'),
(18,32,'2023-11-10','Photos/Video Shared','Not Interested', 'Considered Sangareddy too, preferred Medchal ORR proximity.'),
(19,29,'2023-01-20','Photos/Video Shared','Interested',     'Reinvesting after retail sale.'),
(20,30,'2023-04-05','Site Visit',         'Interested',     'Developer site inspection.'),
(21,31,'2022-11-25','Site Visit',         'Interested',     'Second plot purchase, quick decision.'),
(22,32,'2023-06-20','Photos/Video Shared','Interested',     'NH frontage was the key factor.'),
(23,36,'2022-11-30','Site Visit',         'Interested',     'LEED platinum building visit.'),
(24,37,'2023-03-05','Photos/Video Shared','Interested',     'Referral buyer, quick interest.'),
(24,40,'2023-02-15','Photos/Video Shared','Not Interested', 'Too large for his needs, preferred OF-005.'),
(25,38,'2022-10-15','Photos/Video Shared','Interested',     'Second purchase, already knew the area.'),
(26,39,'2023-06-01','Site Visit',         'Interested',     'Referred buyer visited personally.'),
(27,40,'2022-12-20','Site Visit',         'Interested',     'Largest floor plate impressed him.'),
(29,42,'2023-10-15','Photos/Video Shared','Interested',     'First-time buyer, quick decision.'),
(29,44,'2023-09-20','Photos/Video Shared','Maybe',           'Compared Kukatpally option, chose Ameerpet metro proximity.'),
(30,43,'2022-11-20','Site Visit',         'Interested',     'Corner shop visit.'),
(31,44,'2023-01-25','Photos/Video Shared','Interested',     'Liked footfall numbers shared.'),
(32,3, '2024-06-01','Photos/Video Shared','Not Interested', 'Under construction, not preferred this time either.'),
(32,8, '2024-06-10','Photos/Video Shared','Maybe',           'Liked design, still under construction though.'),
(33,1, '2024-04-10','Site Visit',         'Maybe',           'Liked the property, price is the issue.'),
(34,11,'2023-10-05','Site Visit',         'Interested',     'Visited ultra-premium villa. Loved it.'),
(35,34,'2024-03-05','Photos/Video Shared','Interested',     'Reviewing as investment option.'),
(36,27,'2024-02-10','Photos/Video Shared','Interested',     'Budget fits well, in active discussion.'),
(37,45,'2024-03-15','Site Visit',         'Interested',     'Loved the Road No. 2 location.'),
(38,35,'2023-08-20','Photos/Video Shared','Maybe',           'Considered Madhapur smaller unit before pausing search.'),
(40,1, '2023-11-15','Site Visit',         'Maybe',           'Liked it but price gap too wide. Eventually cancelled search.'),
(40,11,'2023-12-01','Photos/Video Shared','Not Interested', 'Too large for his needs.');

INSERT INTO meetings
  (property_id,buyer_id,meeting_date,meeting_number,buyer_offered_price,seller_counter_price,outcome,notes)
VALUES
-- OF-001 Hitech City — Kiran, 3 meetings
(33,23,'2024-01-25',1,39000000,42000000,'No Deal - Price Gap','Kiran at 3.9Cr, seller firm at 4.2Cr.'),
(33,23,'2024-02-20',2,40000000,41000000,'Offer Made',        'Narrowing. Kiran 4.0Cr, seller 4.1Cr.'),
(33,23,'2024-03-15',3,41000000,41000000,'Agreement Reached','Both agreed at 4.1Cr.'),
-- VL-002 Kokapet — Sunita, 2 meetings
(2, 25,'2023-11-20',1,30000000,32000000,'Offer Made',        'Sunita at 3.0Cr, seller at 3.2Cr.'),
(2, 25,'2023-12-15',2,31000000,31000000,'Agreement Reached','Agreed at 3.1Cr. Ready possession.'),
-- VL-004 Manikonda — Vamsi, direct meeting, no showing
(4, 26,'2024-02-01',1,18500000,19000000,'Agreement Reached','Direct meeting, no prior showing. Done in one sitting.'),
-- VL-005 Banjara Hills — Mala, 2 meetings
(5, 41,'2023-03-20',1,50000000,55000000,'Offer Made',        'Mala at 5.0Cr, seller at 5.5Cr.'),
(5, 41,'2023-04-10',2,53000000,53000000,'Agreement Reached','Agreed at 5.3Cr. NRI relocation buyer.'),
-- VL-006 Kokapet — Pooja, 2 meetings
(6, 38,'2023-06-01',1,24000000,26000000,'Terms Discussed',   'Pooja at 2.4Cr, seller at 2.6Cr.'),
(6, 38,'2023-06-25',2,25000000,25000000,'Agreement Reached','Settled at 2.5Cr.'),
-- VL-007 Jubilee Hills — Lakshmi (1st of her purchases), 2 meetings
(7, 28,'2023-02-20',1,68000000,72000000,'Offer Made',        'Lakshmi at 6.8Cr, seller at 7.2Cr.'),
(7, 28,'2023-03-15',2,70000000,70000000,'Agreement Reached','Agreed at 7.0Cr. Her first big purchase.'),
-- VL-009 Manikonda — Rekha, 1 meeting
(9, 47,'2023-04-28',1,17000000,17000000,'Agreement Reached','Quick single-meeting close at 1.7Cr.'),
-- VL-010 Kokapet — Anisha (NRI), 3 meetings
(10,34,'2023-07-01',1,35000000,38000000,'No Deal - Price Gap','Anisha at 3.5Cr, seller at 3.8Cr.'),
(10,34,'2023-07-25',2,36000000,37000000,'Offer Made',        'Video call negotiation. Closing in.'),
(10,34,'2023-08-15',3,36500000,36500000,'Agreement Reached','Agreed at 3.65Cr after video call rounds.'),
-- RP-001 Kompally — Tejashwini, 2 meetings
(13,31,'2024-03-15',1,8200000, 8700000, 'Terms Discussed',   'Buyer at 82L, seller at 87L.'),
(13,31,'2024-04-02',2,8500000, 8500000, 'Agreement Reached','Met at 85L. Both existing network contacts.'),
-- RP-003 Mokila — Harish, 2 meetings
(15,30,'2024-04-10',1,11000000,12000000,'Terms Discussed',   'Harish at 1.1Cr, owner at 1.2Cr.'),
(15,30,'2024-04-22',2,11500000,11500000,'Agreement Reached','Agreed at 1.15Cr. Corner plot premium.'),
-- RP-005 Kompally — Nikhil, 1 meeting
(17,40,'2023-02-05',1,6300000, 6300000, 'Agreement Reached','Quick close at 63L. Budget buyer.'),
-- RP-006 Kompally — Dhruv (1st plot), 2 meetings
(18,36,'2023-03-22',1,7300000, 7800000, 'Terms Discussed',   'Dhruv at 73L, owner at 78L.'),
(18,36,'2023-04-08',2,7500000, 7500000, 'Agreement Reached','Agreed at 75L.'),
-- RP-007 Shadnagar — Dhruv (2nd plot), 1 meeting
(19,36,'2023-08-28',1,3400000, 3400000, 'Agreement Reached','Second plot. Quick agreement at 34L.'),
-- RP-008 Kondapur — Sharath, 2 meetings
(20,39,'2023-05-05',1,14000000,15000000,'Offer Made',        'Sharath at 1.4Cr, owner at 1.5Cr.'),
(20,39,'2023-05-20',2,14500000,14500000,'Agreement Reached','Agreed at 1.45Cr.'),
-- RP-009 Shamirpet — Farhan, 1 meeting
(21,37,'2023-01-28',1,3700000, 3700000, 'Agreement Reached','Switched from retail. Quick close at 37L.'),
-- RP-010 Uppal — Tariq, 2 meetings
(22,42,'2023-06-18',1,5100000, 5500000, 'Terms Discussed',   'Tariq at 51L, owner at 55L.'),
(22,42,'2023-07-02',2,5300000, 5300000, 'Agreement Reached','Agreed at 53L.'),
-- RP-011 Mokila — Kavitha, 1 meeting
(23,45,'2023-09-18',1,9200000, 9200000, 'Agreement Reached','Both parties already known. Quick close at 92L.'),
-- CP-001 Medchal — Rohit (NRI), 3 meetings
(26,27,'2024-02-20',1,22000000,25000000,'No Deal - Price Gap','Rohit at 2.2Cr, seller wants 2.5Cr.'),
(26,27,'2024-03-25',2,24000000,24500000,'Offer Made',        'Closing in. Rohit 2.4Cr, seller 2.45Cr.'),
(26,27,'2024-04-20',3,24500000,24500000,'Agreement Reached','Agreed at 2.45Cr. NRI, 3 rounds.'),
-- CP-004 Medchal — Naveen, 2 meetings
(29,44,'2023-04-18',1,18000000,19500000,'Terms Discussed',   'Naveen at 1.8Cr, owner at 1.95Cr.'),
(29,44,'2023-05-05',2,19000000,19000000,'Agreement Reached','Agreed at 1.9Cr.'),
-- CP-005 Patancheru — Pradeep (1st of 3 deals), 2 meetings
(30,46,'2023-06-28',1,20000000,22000000,'Offer Made',        'Pradeep at 2.0Cr, owner at 2.2Cr.'),
(30,46,'2023-07-15',2,21000000,21000000,'Agreement Reached','Agreed at 2.1Cr. First of three Pradeep deals.'),
-- CP-006 Medchal — Pradeep (2nd), 1 meeting
(31,46,'2023-02-01',1,34000000,34000000,'Agreement Reached','Repeat developer client. Quick close at 3.4Cr.'),
-- CP-007 Sangareddy — Chandra Sekhar, 2 meetings
(32,48,'2023-09-05',1,26000000,28000000,'Terms Discussed',   'Chandra Sekhar at 2.6Cr, owner at 2.8Cr.'),
(32,48,'2023-09-22',2,27500000,27500000,'Agreement Reached','Agreed at 2.75Cr. NH frontage justified price.'),
-- OF-004 Nanakramguda — Vijay, 3 meetings
(36,50,'2023-02-18',1,52000000,55000000,'No Deal - Price Gap','Vijay at 5.2Cr, seller at 5.5Cr.'),
(36,50,'2023-03-10',2,53500000,54500000,'Offer Made',        'Narrowing. Vijay 5.35Cr, seller 5.45Cr.'),
(36,50,'2023-03-28',3,54000000,54000000,'Agreement Reached','Agreed at 5.4Cr. Largest office deal that year.'),
-- OF-005 Hitech City — Siddharth, 2 meetings
(37,33,'2023-05-28',1,36000000,38000000,'Offer Made',        'Siddharth at 3.6Cr, seller at 3.8Cr.'),
(37,33,'2023-06-12',2,37000000,37000000,'Agreement Reached','Agreed at 3.7Cr.'),
-- OF-006 Gachibowli — Chandra Sekhar (2nd deal), 1 meeting
(38,48,'2023-01-22',1,28500000,28500000,'Agreement Reached','Repeat client. Quick close at 2.85Cr.'),
-- OF-007 Nanakramguda — Venkat, 2 meetings
(39,35,'2023-09-02',1,38000000,41000000,'Terms Discussed',   'Venkat at 3.8Cr, seller at 4.1Cr.'),
(39,35,'2023-09-20',2,40000000,40000000,'Agreement Reached','Agreed at 4.0Cr.'),
-- OF-008 Hitech City — Pradeep (3rd, biggest deal), 2 meetings
(40,46,'2023-03-28',1,58000000,62000000,'Offer Made',        'Pradeep at 5.8Cr, seller at 6.2Cr.'),
(40,46,'2023-04-15',2,60500000,60500000,'Agreement Reached','Agreed at 6.05Cr. Third Pradeep purchase.'),
-- RS-001 Banjara Hills — Faisal, 2 meetings
(41,29,'2023-12-20',1,17000000,18500000,'Terms Discussed',   'Faisal at 1.7Cr, seller at 1.85Cr.'),
(41,29,'2024-01-08',2,17500000,17500000,'Agreement Reached','Settled at 1.75Cr. Cash deal.'),
-- RS-002 Ameerpet — Aditya, 1 meeting
(42,24,'2023-12-10',1,9300000, 9300000, 'Agreement Reached','Quick agreement at 93L. Single meeting.'),
-- RS-003 Jubilee Hills — Neha, 2 meetings
(43,49,'2023-01-28',1,22000000,24000000,'Offer Made',        'Neha at 2.2Cr, seller at 2.4Cr.'),
(43,49,'2023-02-12',2,23500000,23500000,'Agreement Reached','Agreed at 2.35Cr.'),
-- RS-004 Kukatpally — Priya, 1 meeting
(44,32,'2023-04-02',1,8300000, 8300000, 'Agreement Reached','Walk-in style buyer. Quick close at 83L.'),
-- VL-001 Jubilee Hills — ONGOING. Ramesh tried and withdrew, Lakshmi still negotiating
(1, 43,'2023-11-20',1,38000000,45000000,'No Deal - Buyer Withdrew','Ramesh tried first. 70L gap. Withdrew, stayed in rental.'),
(1, 28,'2024-05-01',1,40000000,45000000,'No Deal - Price Gap','Lakshmi at 4.0Cr, Ravi firm at 4.5Cr. 50L gap.'),
(1, 28,'2024-06-10',2,41000000,44500000,'Follow-up Needed',  'Still 35L apart. Owner considering revision.'),
-- VL-011 Banjara Hills — ONGOING, Lakshmi
(11,28,'2023-10-20',1,75000000,85000000,'No Deal - Price Gap','Lakshmi at 7.5Cr, owner firm at 8.5Cr. 1Cr gap.'),
-- OF-002 Gachibowli — ONGOING, Lakshmi
(34,28,'2024-03-20',1,32000000,35000000,'Follow-up Needed',  'Lakshmi interested. 30L gap. Follow-up scheduled.'),
-- CP-002 Patancheru — ONGOING, Kavitha
(27,45,'2024-02-25',1,16500000,18000000,'Terms Discussed',  'Kavitha at 1.65Cr, owner at 1.8Cr.'),
-- RS-005 Banjara Hills — ONGOING, Tariq
(45,42,'2024-03-25',1,13500000,13700000,'Follow-up Needed',  'Tariq very close. 2L gap remains.'),
-- Stale listings — exploratory meetings that led nowhere
(35,24,'2023-10-05',1,19000000,21000000,'No Deal - Buyer Withdrew','Aditya explored OF-003 before choosing retail instead.'),
(28,44,'2023-02-25',1,16000000,18000000,'No Deal - Price Gap',        'Naveen explored CP-003 before settling on CP-004.');


INSERT INTO transactions
  (property_id,buyer_id,seller_id,final_sale_price,registration_date,
   seller_commission_pct,seller_commission_amt,seller_commission_method,seller_commission_status,seller_commission_received_date,
   buyer_commission_pct,buyer_commission_amt,buyer_commission_method,buyer_commission_status,buyer_commission_received_date,
   total_commission,total_commission_received,notes)
VALUES
(33,23,3, 41000000,'2024-03-25',1.00,410000,'Cheque','Received','2024-03-30',0.50,205000,'Cheque','Pending', NULL,        615000, 410000, 'Seller paid promptly. Kiran (Gurgaon-based) yet to settle.'),
(2, 25,5, 31000000,'2023-12-28',1.00,310000,'Cash',  'Received','2024-01-02',0.50,155000,'Cash',  'Received','2023-12-30',465000, 465000, 'Both sides paid within a week of registration.'),
(4, 26,43,18500000,'2024-02-15',1.00,185000,'Cheque','Received','2024-02-18',1.00,185000,'Cash',  'Received','2024-02-16',370000, 370000, 'Ramesh (seller, also our buyer) paid promptly.'),
(5, 41,10,53000000,'2023-04-25',1.00,530000,'Cheque','Received','2023-04-28',0.50,265000,'Cheque','Received','2023-05-02',795000, 795000, 'Largest villa deal of year 1.'),
(6, 38,12,25000000,'2023-07-10',1.00,250000,'Cash',  'Received','2023-07-14',1.00,250000,'Cash',  'Received','2023-07-12',500000, 500000, 'Both known contacts. Double commission.'),
(7, 28,13,70000000,'2023-04-01',1.00,700000,'Cheque','Received','2023-04-05',0.50,350000,'Cheque','Received','2023-04-08',1050000,1050000,'Biggest commission of year 1. Lakshmi first purchase.'),
(9, 47,8, 17000000,'2023-05-10',1.00,170000,'Cash',  'Received','2023-05-14',1.00,170000,'Cash',  'Received','2023-05-11',340000, 340000, 'Rekha sold and bought via us same season.'),
(10,34,9, 36500000,'2023-08-30',1.00,365000,'Cheque','Received','2023-09-02',0.50,182500,'Cheque','Received','2023-09-05',547500, 547500, 'NRI buyer. International wire settled promptly.'),
(13,31,2, 8500000, '2024-04-15',1.00,85000, 'Cheque','Received','2024-04-18',1.00,85000, 'Cash',  'Received','2024-04-16',170000, 170000, 'Both existing clients. Quick double commission.'),
(15,30,8, 11500000,'2024-05-05',1.00,115000,'Cheque','Received','2024-05-10',1.00,115000,'Cheque','Pending', NULL,        230000, 115000, 'Seller paid fast. Harish (referral buyer) still pending.'),
(17,40,14,6300000, '2023-02-18',1.00,63000, 'Cash',  'Received','2023-02-22',0.50,31500, 'Cash',  'Received','2023-02-20',94500,  94500,  'First investment for Nikhil. Small but smooth deal.'),
(18,36,14,7500000, '2023-04-20',1.00,75000, 'Cash',  'Received','2023-04-24',0.50,37500, 'Cash',  'Received','2023-04-22',112500, 112500, 'Dhruv first of two plot purchases.'),
(19,36,14,3400000, '2023-09-08',1.00,34000, 'Cash',  'Received','2023-09-12',0.50,17000, 'Cash',  'Received','2023-09-10',51000,  51000,  'Dhruv second plot. Same seller as first.'),
(20,39,16,14500000,'2023-06-02',1.00,145000,'Cheque','Received','2023-06-06',1.00,145000,'Cheque','Received','2023-06-04',290000, 290000, 'Sharath existing client. Double commission.'),
(21,37,20,3700000, '2023-02-08',1.00,37000, 'Cash',  'Received','2023-02-12',0.00,0,     'N/A',   'N/A',      NULL,        37000,  37000,  'Farhan was a walk-in. Seller commission only.'),
(22,42,21,5300000, '2023-07-15',1.00,53000, 'Cheque','Received','2023-07-19',0.50,26500, 'Cheque','Received','2023-07-17',79500,  79500,  'Tariq first plot purchase before retail search.'),
(23,45,47,9200000, '2023-09-28',1.00,92000, 'Cash',  'Received','2023-10-02',1.00,92000, 'Cash',  'Received','2023-09-30',184000, 184000, 'Two Both-type contacts trading within our network.'),
(26,27,6, 24500000,'2024-05-05',1.00,245000,'Cheque','Pending', NULL,        1.00,245000,'Cheque','Pending', NULL,        490000, 0,      'Just registered. Collection in progress from both sides.'),
(29,44,8, 19000000,'2023-05-18',1.00,190000,'Cheque','Received','2023-05-22',1.00,190000,'Cheque','Received','2023-05-20',380000, 380000, 'Naveen reinvesting right after his retail sale.'),
(30,46,18,21000000,'2023-07-28',1.00,210000,'Cheque','Received','2023-08-01',1.00,210000,'Cheque','Received','2023-07-30',420000, 420000, 'Pradeep deal 1 of 3 this year.'),
(31,46,6, 34000000,'2023-02-12',1.00,340000,'Cheque','Received','2023-02-16',1.00,340000,'Cheque','Received','2023-02-14',680000, 680000, 'Pradeep deal 2 of 3.'),
(32,48,6, 27500000,'2023-10-05',1.00,275000,'Cheque','Received','2023-10-09',1.00,275000,'Cheque','Received','2023-10-07',550000, 550000, 'Chandra Sekhar existing client. Double commission.'),
(36,50,15,54000000,'2023-04-10',1.00,540000,'Cheque','Received','2023-04-14',0.50,270000,'Cheque','Received','2023-04-12',810000, 810000, 'Largest office deal that year. Vijay (referral) bought.'),
(37,33,9, 37000000,'2023-06-25',1.00,370000,'Cheque','Received','2023-06-29',0.50,185000,'Cheque','Received','2023-06-27',555000, 555000, 'Siddharth referred by Rajesh Varma.'),
(38,48,11,28500000,'2023-02-03',1.00,285000,'Cheque','Received','2023-02-07',1.00,285000,'Cheque','Received','2023-02-05',570000, 570000, 'Chandra Sekhar second office purchase.'),
(39,35,15,40000000,'2023-10-03',1.00,400000,'Cheque','Received','2023-10-07',0.50,200000,'Cheque','Received','2023-10-05',600000, 600000, 'Venkat referred by Arun Krishnamurthy.'),
(40,46,50,60500000,'2023-04-28',1.00,605000,'Cheque','Received','2023-05-02',1.00,605000,'Cheque','Received','2023-04-30',1210000,1210000,'Biggest single deal of the dataset. Pradeep deal 3 of 3.'),
(41,29,4, 17500000,'2024-01-20',1.00,175000,'Cash',  'Received','2024-01-20',0.00,0,     'N/A',   'N/A',      NULL,        175000, 175000, 'Faisal was a walk-in. Seller commission only.'),
(42,24,44,9300000, '2023-12-22',1.00,93000, 'Cash',  'Received','2023-12-26',0.50,46500, 'Cash',  'Received','2023-12-24',139500, 139500, 'Naveen (seller here) is also our buyer elsewhere.'),
(43,49,13,23500000,'2023-02-25',1.00,235000,'Cheque','Received','2023-03-01',0.50,117500,'Cheque','Received','2023-02-27',352500, 352500, 'Neha sold an office unit before this purchase.'),
(44,32,22,8300000, '2023-04-15',1.00,83000, 'Cash',  'Received','2023-04-19',0.50,41500, 'Cash',  'Received','2023-04-17',124500, 124500, 'Priya found via property portal. Good footfall area.');
