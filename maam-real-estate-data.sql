INSERT INTO contacts
  (full_name, phone, email, contact_type, locality, source, source_agent_name, referred_by_id, notes)
VALUES
-- ── SELLERS (1–22) ──────────────────────────────────────────
('Ravi Shankar Reddy',   '9849100001', 'ravi.s@gmail.com',     'Seller', 'Banjara Hills',  'Existing Client', NULL,              NULL, 'Long-standing client. Premium villa and plot owner.'),
('Suresh Babu Goud',     '9849100002',  NULL,                  'Seller', 'Kompally',       'Referral',        NULL,              NULL, 'Multiple residential plots in north Hyderabad.'),
('Anand Venkatesh',      '9849100003', 'anand.v@techcorp.com', 'Seller', 'Hitech City',    'Existing Client', NULL,              NULL, 'IT professional. Selling office space investments.'),
('Padma Venkataraman',   '9849100004',  NULL,                  'Seller', 'Jubilee Hills',  'Cold Call',       NULL,              NULL, 'Owns retail and office properties. We approached her.'),
('Srinivas Rao Choudary','9849100005',  NULL,                  'Seller', 'Manikonda',      'Referral',        NULL,              NULL, 'Builder network referral. Villa in Kokapet.'),
('Mahesh Kumar Jain',    '9849100006', 'mahesh.j@gmail.com',   'Seller', 'Medchal',        'Advertisement',   NULL,              NULL, 'Multiple commercial plots near ORR. Ad response.'),
('Deepak Choudhary',     '9849100007',  NULL,                  'Seller', 'Narsingi',       'Referral',        'Ramakrishna Nair',NULL, 'Contact and property both via external agent.'),
('Nandini Agarwal',      '9849100008', 'nandini.a@gmail.com',  'Seller', 'Manikonda',      'Existing Client', NULL,              NULL, 'Multiple plots on city outskirts.'),
('Rajesh Varma',         '9849100009', 'rajesh.v@gmail.com',   'Seller', 'Hitech City',    'Existing Client', NULL,              NULL, 'HNI. Villa and office investor. Strong network.'),
('Sudha Rani Reddy',     '9849100010',  NULL,                  'Seller', 'Banjara Hills',  'Referral',        NULL,              NULL, 'Inherited villa in Banjara Hills. Looking to sell.'),
('Vikram Singh Rana',    '9849100011', 'vikram.s@corp.in',     'Seller', 'Gachibowli',     'Advertisement',   NULL,              NULL, 'Office unit in Gachibowli. Responded to our ad.'),
('Preethi Suresh',       '9849100012',  NULL,                  'Seller', 'Kokapet',        'Referral',        NULL,              NULL, 'Villa in Kokapet via builder referral.'),
('Sanjay Mehta',         '9849100013', 'sanjay.m@gmail.com',   'Seller', 'Jubilee Hills',  'Existing Client', NULL,              NULL, 'HNI. Premium villa and retail in Jubilee Hills.'),
('Lalitha Devi Goud',    '9849100014',  NULL,                  'Seller', 'Kompally',       'Referral',        NULL,              NULL, 'Plots in Kompally and Shadnagar.'),
('Arun Krishnamurthy',   '9849100015', 'arun.k@gmail.com',     'Seller', 'Nanakramguda',   'Existing Client', NULL,              NULL, 'Grade A office investor in Nanakramguda.'),
('Bhavana Reddy Naik',   '9849100016',  NULL,                  'Seller', 'Kondapur',       'Cold Call',       NULL,              NULL, 'Residential plot Kondapur. We cold-called her.'),
('Sunil Babu Choudary',  '9849100017', 'sunil.b@gmail.com',    'Seller', 'Medchal',        'Advertisement',   NULL,              NULL, 'Commercial plot ORR Phase 3.'),
('Geeta Sharma',         '9849100018',  NULL,                  'Seller', 'Patancheru',     'Referral',        'Venkata Rao',     NULL, 'IDA plot sourced via external agent Venkata Rao.'),
('Prasad Rao Nair',      '9849100019', 'prasad.r@gmail.com',   'Seller', 'Narsingi',       'Existing Client', NULL,              NULL, 'Villa in Narsingi. Under construction.'),
('Kalpana Joshi',        '9849100020',  NULL,                  'Seller', 'Shamirpet',      'Cold Call',       NULL,              NULL, 'Small plot near Shamirpet Lake.'),
('Mohan Lal Verma',      '9849100021', 'mohan.l@gmail.com',    'Seller', 'Uppal',          'Advertisement',   NULL,              NULL, 'Residential plot Uppal ORR corridor.'),
('Sandhya Reddy',        '9849100022',  NULL,                  'Seller', 'Kukatpally',     'Referral',        NULL,              NULL, 'Retail space KPHB colony. Friend referral.'),

-- ── BUYERS (23–42) ──────────────────────────────────────────
('Kiran Tej Malhotra',   '9849100023', 'kiran.m@outlook.com',  'Buyer',  'Gurgaon',        'Referral',        NULL,              1,  'Relocating to HYD. HNI investor. Referred by Ravi Shankar.'),
('Aditya Sharma',        '9849100024', 'aditya.s@gmail.com',   'Buyer',  'Ameerpet',       'Property Portal', NULL,              NULL, 'First-time buyer. Wants retail space for own business.'),
('Sunita Krishnan',      '9849100025',  NULL,                  'Buyer',  'Kondapur',       'Referral',        NULL,              NULL, 'Villa for personal use. Budget flexible.'),
('Vamsi Krishna Reddy',  '9849100026', 'vamsi.k@gmail.com',    'Buyer',  'Manikonda',      'Existing Client', NULL,              NULL, 'Upgrading from apartment to villa.'),
('Rohit Gupta',          '9849100027', 'rohit.g@corp.in',      'Buyer',  'Delhi',          'Advertisement',   NULL,              NULL, 'NRI investor. Commercial land near ORR.'),
('Lakshmi Prasad Naidu', '9849100028',  NULL,                  'Buyer',  'Banjara Hills',  'Referral',        NULL,              4,  'Ultra HNI. Premium villa/office. Referred by Padma.'),
('Faisal Ahmed',         '9849100029', 'faisal.a@biz.com',     'Buyer',  'Hyderabad',      'Walk-in',         NULL,              NULL, 'Retail business owner. Wants Banjara Hills space.'),
('Harish Naidu',         '9849100030',  NULL,                  'Buyer',  'Kokapet',        'Referral',        NULL,              26, 'Plot to build own house. Referred by Vamsi.'),
('Tejashwini Patel',     '9849100031', 'teju.p@gmail.com',     'Buyer',  'Kompally',       'Referral',        NULL,              2,  'Young couple. North HYD plot. Referred by Suresh.'),
('Priya Nambiar',        '9849100032',  NULL,                  'Buyer',  'Hyderabad',      'Property Portal', NULL,              NULL, 'Looking for retail space in Ameerpet/Kukatpally.'),
('Siddharth Rao',        '9849100033', 'sid.r@gmail.com',      'Buyer',  'Hyderabad',      'Referral',        NULL,              9,  'Office investment. Referred by Rajesh Varma.'),
('Anisha Kapoor',        '9849100034', 'anisha.k@gmail.com',   'Buyer',  'Mumbai',         'Advertisement',   NULL,              NULL, 'NRI. Looking for villa in premium locality.'),
('Venkat Subramaniam',   '9849100035', 'venkat.s@gmail.com',   'Buyer',  'Hyderabad',      'Referral',        NULL,              15, 'Grade A office buyer. Referred by Arun Krishnamurthy.'),
('Dhruv Mehta',          '9849100036', 'dhruv.m@gmail.com',    'Buyer',  'Hyderabad',      'Property Portal', NULL,              NULL, 'Looking for residential plot south Hyderabad.'),
('Farhan Qureshi',       '9849100037',  NULL,                  'Buyer',  'Hyderabad',      'Walk-in',         NULL,              NULL, 'Walk-in. Looking for retail or small office.'),
('Pooja Iyer',           '9849100038',  NULL,                  'Buyer',  'Hyderabad',      'Referral',        NULL,              25, 'Villa buyer. Referred by Sunita Krishnan.'),
('Sharath Reddy',        '9849100039', 'sharath.r@gmail.com',  'Buyer',  'Hyderabad',      'Existing Client', NULL,              NULL, 'Past buyer. Now looking for commercial plot.'),
('Nikhil Jain',          '9849100040', 'nikhil.j@gmail.com',   'Buyer',  'Hyderabad',      'Property Portal', NULL,              NULL, 'First investment. Budget modest. Residential plot.'),
('Mala Shetty',          '9849100041',  NULL,                  'Buyer',  'Bengaluru',      'Advertisement',   NULL,              NULL, 'Relocating. Villa or large apartment equivalent.'),
('Tariq Hassan',         '9849100042', 'tariq.h@gmail.com',    'Buyer',  'Hyderabad',      'Referral',        NULL,              29, 'Retail space buyer. Referred by Faisal Ahmed.'),

-- ── BOTH — buyer and seller (43–50) ─────────────────────────
('Ramesh Chandra Rao',   '9849100043', 'ramesh.r@gmail.com',   'Both',   'Hyderabad',      'Existing Client', NULL,              NULL, 'Sold villa Manikonda. Now buying premium villa.'),
('Naveen Kumar Reddy',   '9849100044', 'naveen.r@rediffmail.com','Both',  'Ameerpet',       'Existing Client', NULL,              NULL, 'Sold retail space. Now buying commercial plot.'),
('Kavitha Murthy',       '9849100045',  NULL,                  'Both',   'Kukatpally',     'Referral',        NULL,              43, 'Selling small plot. Buying commercial land. Referred by Ramesh.'),
('Pradeep Singhania',    '9849100046', 'pradeep.s@biz.com',    'Both',   'Hyderabad',      'Existing Client', NULL,              NULL, 'Developer. Buys land, sells developed plots.'),
('Rekha Devi Naik',      '9849100047',  NULL,                  'Both',   'Hyderabad',      'Referral',        NULL,              1,  'Selling inherited plot. Buying a villa. Referred by Ravi.'),
('Chandra Sekhar Goud',  '9849100048', 'chandra.g@gmail.com',  'Both',   'Hyderabad',      'Existing Client', NULL,              NULL, 'Long-term client. Multiple buy-sell transactions.'),
('Neha Bajaj',           '9849100049', 'neha.b@gmail.com',     'Both',   'Hyderabad',      'Property Portal', NULL,              NULL, 'Sold office. Buying retail space.'),
('Vijay Kishore Reddy',  '9849100050', 'vijay.k@gmail.com',    'Both',   'Hyderabad',      'Referral',        NULL,              9,  'Sold commercial plot. Buying office. Referred by Rajesh.');

INSERT INTO properties
  (listing_code, owner_id, source_agent_name, property_type, locality, address,
   area_value, area_unit, asking_price, possession_status, expected_completion,
   bedrooms, floors, road_facing, road_width_ft, is_corner_plot,
   seller_terms, listed_date, status, notes)
VALUES
('MRE-VL-001', 1,  NULL,               'Villa',            'Jubilee Hills', 'Road No. 36, Jubilee Hills',               3800, 'sqft',    45000000, 'Ready',            NULL,         4, 3, 'East', 40, 1, 'No loan cases. Registration within 60 days.',   '2023-08-15', 'Under Negotiation', 'Corner villa. Owner firm on price for 9+ months.'),
('MRE-VL-002', 5,  NULL,               'Villa',            'Kokapet',       'Green Valley Township, Kokapet',            3200, 'sqft',    32000000, 'Ready',            NULL,         3, 2, 'North',30, 0, 'Ready for immediate registration.',             '2023-11-01', 'Sold',              'Sold to Sunita Krishnan. Smooth 2-meeting deal.'),
('MRE-VL-003', 7,  'Ramakrishna Nair','Villa',            'Narsingi',      'Narsingi Road, Near ORR Exit 14',           2600, 'sqft',    28000000, 'Under Construction','2025-03-31', 3, 2, 'NE',   30, 0, 'Interior customisation possible. Builder warranty.','2024-02-10', 'Active',            'Sourced via external agent. Under-construction.'),
('MRE-VL-004', 17, NULL,               'Villa',            'Manikonda',     'Silver Oak Layout, Manikonda',              2400, 'sqft',    19000000, 'Ready',            NULL,         3, 2, 'East', 30, 0, 'Loan cases considered. Flexible timeline.',      '2024-01-15', 'Sold',              'Sold to Vamsi. Owner Ramesh is also an active buyer.'),
('MRE-RP-001', 2,  NULL,               'Residential Plot','Kompally',      'Kompally Main Road, Sector 5',              200,  'sqyards', 8500000,  'Ready',            NULL,         NULL,NULL,'North',40, 0, 'HMDA approved. Clear title. Immediate registration.','2024-03-01', 'Sold',              'Quick deal in 2 meetings. Both parties known.'),
('MRE-RP-002', 2,  NULL,               'Residential Plot','Shamirpet',     'Shamirpet Lake Road',                       150,  'sqyards', 4200000,  'Ready',            NULL,         NULL,NULL,'East', 33, 0, 'Peaceful area. Good for retirement home.',         '2023-12-15', 'Active',            NULL),
('MRE-RP-003', 8,  NULL,               'Residential Plot','Mokila',        'Mokila-Gandipet Road',                      267,  'sqyards', 12000000, 'Ready',            NULL,         NULL,NULL,'NE',   40, 1, 'DTCP approved. Corner plot. Near Pharma City.',    '2024-03-20', 'Sold',              'Corner plot fetched a premium. 2-meeting close.'),
('MRE-RP-004', 8,  NULL,               'Residential Plot','Shadnagar',     'Shadnagar Growth Corridor',                 120,  'sqyards', 2800000,  'Ready',            NULL,         NULL,NULL,'East', 30, 0, 'HMDA approved. Good appreciation potential.',      '2024-05-01', 'Active',            'New listing. Emerging area, attractively priced.'),
('MRE-CP-001', 6,  NULL,               'Commercial Plot', 'Medchal',       'Medchal ORR Service Road',                  2000, 'sqyards', 25000000, 'Ready',            NULL,         NULL,NULL,'East', 60, 0, 'Industrial zone. HMDA approved. Near logistics hub.','2024-02-01', 'Sold',              'Took 3 meetings. Rohit (NRI) closed it.'),
('MRE-CP-002', 8,  NULL,               'Commercial Plot', 'Patancheru',    'IDA Patancheru Phase 2',                    3500, 'sqyards', 18000000, 'Ready',            NULL,         NULL,NULL,'North',60, 1, 'IDA approved. 3-phase power. Mfg/warehouse suitable.','2024-01-20', 'Active',            NULL),
('MRE-CP-003', 6,  NULL,               'Commercial Plot', 'Sangareddy',    'Sangareddy Industrial Area',                5000, 'sqyards', 31000000, 'Ready',            NULL,         NULL,NULL,'East', 80, 0, 'Large industrial plot. Close to Pharma City.',     '2023-10-15', 'Active',            'Listed 8+ months. Enquiries ongoing, no closure yet.'),
('MRE-OF-001', 3,  NULL,               'Office',          'Hitech City',   'Maximus Towers, Hitech City',               4500, 'sqft',    42000000, 'Ready',            NULL,         NULL,12, 'East', NULL,0, 'Furnished. IGBC certified. No tenants.',           '2024-01-10', 'Sold',              'Premium deal. Took 3 meetings to close.'),
('MRE-OF-002', 3,  NULL,               'Office',          'Gachibowli',   'DivyaSree NSL Arena, Gachibowli',           3800, 'sqft',    35000000, 'Ready',            NULL,         NULL,10, 'North',NULL,0, 'Grade A. Semi-furnished. 2 parking slots included.','2024-02-15', 'Active',            'In early discussion with Lakshmi Prasad.'),
('MRE-OF-003', 4,  NULL,               'Office',          'Madhapur',      'Cyber Pearl, Madhapur',                     2200, 'sqft',    21000000, 'Ready',            NULL,         NULL,8,  'East', NULL,0, 'Smaller unit. Suitable for 20-25 persons.',        '2023-09-01', 'Active',            'Listed 9+ months. Price revision may be needed.'),
('MRE-RS-001', 4,  NULL,               'Retail Space',    'Banjara Hills', 'Road No. 12, Banjara Hills',               1100, 'sqft',    18000000, 'Ready',            NULL,         NULL,NULL,'South',NULL,0, 'High street. Ground floor. Excellent footfall.',   '2023-12-01', 'Sold',              'Sold to Faisal. Walk-in buyer, seller commission only.'),
('MRE-RS-002', 18, NULL,               'Retail Space',    'Ameerpet',      'Metro Pillar 112, Ameerpet',               650,  'sqft',    9500000,  'Ready',            NULL,         NULL,NULL,'East', NULL,0, 'Metro adjacent. Ground floor. Ready to hand over.', '2023-11-20', 'Sold',              'Double-sided deal. Naveen (owner) is also our buyer.');

INSERT INTO buyer_requirements
  (buyer_id, property_type, budget_min, budget_max, area_min, area_max, area_unit,
   possession_preference, bedrooms_min, buyer_terms, status, created_date, last_updated_date, notes)
VALUES
(9,  'Office',           35000000, 50000000, 3000, 6000, 'sqft',    'Ready Only', NULL, 'Furnished or semi-furnished. Premium building only.',   'Fulfilled', '2023-12-01', '2024-01-15', 'Bought MRE-OF-001. Now looking for villa (req 11).'),
(11, 'Villa',            25000000, 38000000, 2500, 4000, 'sqft',    'Ready Only', 3,    'Ready to move in. Prefers east-facing.',               'Fulfilled', '2023-11-15', '2024-01-10', 'Bought MRE-VL-002. Office requirement now on hold.'),
(12, 'Villa',            15000000, 22000000, 2000, 3200, 'sqft',    'Any',        3,    'Open to loan. Quick registration preferred.',           'Fulfilled', '2024-01-05', NULL,         'Bought MRE-VL-004. Went directly to meeting, no showing.'),
(13, 'Commercial Plot',  18000000, 35000000, 1500, 5000, 'sqyards', 'Ready Only', NULL, 'HMDA/IDA approved only. Near ORR or national highway.','Fulfilled', '2023-12-20', '2024-02-10', 'Bought MRE-CP-001. Took 3 rounds of negotiation.'),
(10, 'Retail Space',     6000000,  12000000, 500,  1000, 'sqft',    'Ready Only', NULL, 'Ground floor only. High footfall area.',               'Fulfilled', '2023-12-10', NULL,         'Bought MRE-RS-002. Budget was flexible at final stage.'),
(15, 'Retail Space',     14000000, 22000000, 800,  1500, 'sqft',    'Ready Only', NULL, 'Prime high street only. Cash deal.',                  'Fulfilled', '2024-01-20', NULL,         'Bought MRE-RS-001.'),
(20, 'Residential Plot', 6000000,  12000000, 150,  300,  'sqyards', 'Ready Only', NULL, 'HMDA approved. North Hyderabad preferred.',             'Fulfilled', '2024-02-15', '2024-03-15', 'Bought MRE-RP-001.'),
(16, 'Residential Plot', 8000000,  15000000, 200,  350,  'sqyards', 'Ready Only', NULL, 'Approved layout only. Open to Gandipet/Mokila area.',   'Fulfilled', '2024-04-01', NULL,         'Bought MRE-RP-003. Corner plot was the deciding factor.'),
(14, 'Villa',            40000000, 80000000, 3500, 6000, 'sqft',    'Ready Only', 4,    'Ultra-premium only. Cash deal. No compromise on locality.','Active',    '2024-03-01', '2024-05-15', 'VL-001 shown. 50L price gap. Negotiations ongoing.'),
(14, 'Office',           30000000, 50000000, 3000, 5000, 'sqft',    'Ready Only', NULL, 'Grade A building. Western corridor only.',              'Active',    '2024-03-01', NULL,         'Exploring office investment alongside villa search.'),
(9,  'Villa',            40000000, 65000000, 3000, 5000, 'sqft',    'Ready Only', 4,    'Personal use. After relocating to Hyderabad.',          'Active',    '2024-05-20', NULL,         'New req from Kiran post office purchase.'),
(19, 'Commercial Plot',  15000000, 30000000, 1000, 3000, 'sqyards', 'Ready Only', NULL, 'Kavitha exploring commercial development.',             'Active',    '2024-04-15', NULL,         NULL),
(18, 'Commercial Plot',  18000000, 40000000, 2000, 6000, 'sqyards', 'Ready Only', NULL, 'Post retail sale. Looking for large commercial plot.',   'Active',    '2024-01-30', '2024-04-01', 'Budget revised upward after Sangareddy site visit.'),
(17, 'Villa',            60000000,120000000, 4000, 8000, 'sqft',    'Ready Only', 5,    'Significant upgrade. Cash only. No compromise.',        'Active',    '2024-03-25', NULL,         'Ramesh sold Manikonda villa, eyeing Jubilee Hills.'),
(11, 'Office',           20000000, 40000000, 2000, 4000, 'sqft',    'Ready Only', NULL, 'Exploring office investment in Hitech City corridor.',   'On Hold',   '2024-03-01', '2024-04-01', 'On hold after villa purchase. May resume Q3 2024.');

INSERT INTO requirement_localities (requirement_id, locality) VALUES
(1,'Hitech City'),  (1,'Gachibowli'),   (1,'Madhapur'),
(2,'Kokapet'),      (2,'Manikonda'),    (2,'Narsingi'),
(3,'Manikonda'),    (3,'Kokapet'),
(4,'Medchal'),      (4,'Patancheru'),   (4,'Sangareddy'),
(5,'Ameerpet'),     (5,'Kukatpally'),   (5,'Begumpet'),
(6,'Banjara Hills'),(6,'Jubilee Hills'),
(7,'Kompally'),     (7,'Shamirpet'),
(8,'Mokila'),       (8,'Gandipet'),     (8,'Narsingi'),
(9,'Jubilee Hills'),(9,'Banjara Hills'),(9,'Film Nagar'),
(10,'Hitech City'), (10,'Nanakramguda'),
(11,'Kokapet'),     (11,'Nanakramguda'),(11,'Manikonda'),
(12,'Medchal'),     (12,'Patancheru'),
(13,'Sangareddy'),  (13,'Patancheru'),  (13,'Zaheerabad'),
(14,'Jubilee Hills'),(14,'Banjara Hills'),(14,'Kokapet'),
(15,'Hitech City'), (15,'Gachibowli');

INSERT INTO property_showings
  (requirement_id, property_id, showing_date, method, buyer_response, notes)
VALUES
(1,  12, '2024-02-15', 'Photos/Video Shared', 'Interested',    'Kiran showed strong interest. Set up meeting.'),
(1,  13, '2024-02-10', 'Photos/Video Shared', 'Maybe',         'Also shown Gachibowli option. Preferred Hitech City.'),
(2,   2, '2024-01-05', 'Site Visit',          'Interested',    'Sunita visited with family. Very positive response.'),
(2,   3, '2023-12-01', 'Photos/Video Shared', 'Not Interested','Under-construction was a concern. Dropped option.'),
(4,   9, '2024-03-01', 'Location Shared',     'Interested',    'Rohit liked ORR proximity. Requested meeting.'),
(4,  11, '2024-02-25', 'Photos/Video Shared', 'Not Interested','Sangareddy too far from his existing operations.'),
(5,  16, '2024-01-15', 'Site Visit',          'Interested',    'Aditya visited with brother. Metro proximity key.'),
(6,  15, '2024-02-10', 'Photos/Video Shared', 'Interested',    'Faisal liked Road No. 12 location immediately.'),
(7,   5, '2024-03-20', 'Photos/Video Shared', 'Interested',    'Tejashwini liked approved layout and north location.'),
(8,   7, '2024-04-25', 'Location Shared',     'Interested',    'Harish liked corner plot. Visited independently after.'),
(9,   1, '2024-04-10', 'Site Visit',          'Maybe',         'Lakshmi visited VL-001. Liked property, price is issue.'),
(10, 13, '2024-05-20', 'Photos/Video Shared', 'Interested',    'Lakshmi reviewing Gachibowli office as investment.'),
(11,  3, '2024-03-15', 'Site Visit',          'Maybe',         'Kiran visited Narsingi. Under-construction is a concern.'),
(12, 10, '2024-04-01', 'Photos/Video Shared', 'Interested',    'Kavitha interested in Patancheru. Budget fits well.'),
(13, 11, '2024-05-05', 'Site Visit',          'Interested',    'Naveen visited Sangareddy in person. Very positive.'),
(14,  1, '2024-01-25', 'Site Visit',          'Maybe',         'Ramesh loves VL-001 but asking price above his range.'),
(14,  2, '2024-01-10', 'Photos/Video Shared', 'Not Interested','Kokapet not Ramesh preferred locality.'),
(12,  9, '2024-03-05', 'Photos/Video Shared', 'Not Interested','Medchal plot was already under negotiation when shown.');

INSERT INTO meetings
  (property_id, buyer_id, meeting_date, meeting_number,
   buyer_offered_price, seller_counter_price, outcome, notes)
VALUES
-- MRE-RP-001 Kompally Plot — sold to Tejashwini in 2 meetings
(5, 20, '2024-04-05', 1, 8200000,  8700000,  'Terms Discussed',   'Buyer at 82L, seller at 87L. Both parties positive.'),
(5, 20, '2024-04-15', 2, 8500000,  8500000,  'Agreement Reached', 'Met at 85L. Quick deal. Both existing clients.'),
-- MRE-OF-001 Hitech City Office — sold to Kiran in 3 meetings
(12, 9, '2024-03-10', 1, 39000000, 42000000, 'No Deal - Price Gap','Kiran at 3.9Cr, seller firm at 4.2Cr. Significant gap.'),
(12, 9, '2024-04-01', 2, 40000000, 41000000, 'Offer Made',        'Closing in. Kiran at 4.0Cr, seller moved to 4.1Cr.'),
(12, 9, '2024-05-05', 3, 41000000, 41000000, 'Agreement Reached', 'Both agreed at 4.1Cr. Closed after 3 meetings.'),
-- MRE-RS-001 Banjara Hills Retail — sold to Faisal in 2 meetings
(15, 15, '2024-02-20', 1, 17000000, 18500000, 'Terms Discussed',   'Faisal at 1.7Cr, seller at 1.85Cr. Location discussed.'),
(15, 15, '2024-03-05', 2, 17500000, 17500000, 'Agreement Reached', 'Settled at 1.75Cr. Cash deal. Smooth close.'),
-- MRE-CP-001 Medchal Plot — sold to Rohit in 3 meetings
(9, 13, '2024-03-15', 1, 22000000, 25000000, 'No Deal - Price Gap','Rohit at 2.2Cr, seller wants 2.5Cr.'),
(9, 13, '2024-04-20', 2, 24000000, 24500000, 'Offer Made',        'Closing in. Rohit at 2.4Cr, seller at 2.45Cr.'),
(9, 13, '2024-05-25', 3, 24500000, 24500000, 'Agreement Reached', 'Agreed at 2.45Cr. NRI investor, 3 rounds needed.'),
-- MRE-VL-002 Kokapet Villa — sold to Sunita in 2 meetings
(2, 11, '2024-01-20', 1, 30000000, 32000000, 'Offer Made',        'Sunita at 3.0Cr, seller at 3.2Cr. Both serious buyers.'),
(2, 11, '2024-02-15', 2, 31000000, 31000000, 'Agreement Reached', 'Agreed at 3.1Cr. Ready possession, smooth deal.'),
-- MRE-RS-002 Ameerpet Retail — sold to Aditya in 1 meeting
(16, 10, '2024-01-20', 1, 9300000,  9500000,  'Agreement Reached', 'Quick agreement at 93L. Both parties decisive.'),
-- MRE-VL-004 Manikonda Villa — Vamsi direct to meeting, no prior showing
(4, 12, '2024-03-10', 1, 18500000, 19000000, 'Agreement Reached', 'Vamsi knew the area. Direct meeting. Done in 1 sitting.'),
-- MRE-RP-003 Mokila Plot — sold to Harish in 2 meetings
(7, 16, '2024-05-10', 1, 11000000, 12000000, 'Terms Discussed',   'Harish at 1.1Cr, owner at 1.2Cr. Corner plot discussed.'),
(7, 16, '2024-05-22', 2, 11500000, 11500000, 'Agreement Reached', 'Agreed at 1.15Cr. Good deal on corner plot.'),
-- MRE-VL-001 Jubilee Hills — ONGOING NEGOTIATION, 2 buyers tried
(1, 14, '2024-05-01', 1, 40000000, 45000000, 'No Deal - Price Gap','Lakshmi at 4.0Cr, Ravi firm at 4.5Cr. 50L gap persists.'),
(1, 17, '2024-02-15', 1, 38000000, 45000000, 'No Deal - Price Gap','Ramesh Rao tried first. 70L gap, went nowhere.'),
-- MRE-OF-002 Gachibowli Office — ACTIVE, follow-up pending
(13, 14, '2024-06-01', 1, 32000000, 35000000, 'Follow-up Needed',  'Lakshmi interested. 30L gap. Follow-up scheduled.'),
-- MRE-VL-003 Narsingi — FAILED, buyer withdrew (chose Kokapet instead)
(3, 11, '2023-12-10', 1, 25000000, 28000000, 'No Deal - Buyer Withdrew','Sunita withdrew. Under-construction too risky. Chose Kokapet.');


INSERT INTO transactions
  (property_id, buyer_id, seller_id, final_sale_price, registration_date,
   seller_commission_pct, seller_commission_amt, seller_commission_method,
   seller_commission_status, seller_commission_received_date,
   buyer_commission_pct, buyer_commission_amt, buyer_commission_method,
   buyer_commission_status, buyer_commission_received_date,
   total_commission, total_commission_received, notes)
VALUES
-- 1. RP-001 Kompally 85L — double commission 1%+1%, both received
(5,  20, 2,  8500000,  '2024-04-20',
 1.00, 85000,  'Cheque', 'Received', '2024-04-25',
 1.00, 85000,  'Cash',   'Received', '2024-04-20',
 170000, 170000, 'Both existing clients. Full double commission collected.'),
-- 2. OF-001 Hitech City 4.1Cr — seller 1% received, buyer 0.5% pending
(12, 9,  3,  41000000, '2024-05-15',
 1.00, 410000, 'Cheque', 'Received', '2024-05-20',
 0.50, 205000, 'Cheque', 'Pending',  NULL,
 615000, 410000, 'Seller paid promptly. Kiran to pay on return from Gurgaon.'),
-- 3. RS-001 Banjara Hills 1.75Cr — seller 1% only (walk-in buyer)
(15, 15, 4,  17500000, '2024-03-10',
 1.00, 175000, 'Cash',   'Received', '2024-03-10',
 0.00, 0,      'N/A',    'N/A',      NULL,
 175000, 175000, 'Faisal was a walk-in. Buyer commission not applicable.')
-- 4. CP-001 Medchal 2.45Cr — both 1%, both pending (just closed);


