CREATE TABLE contacts (
  contact_id        INT           AUTO_INCREMENT PRIMARY KEY,
  full_name         VARCHAR(100) NOT NULL,
  phone             VARCHAR(15)  NOT NULL,
  email             VARCHAR(120),
  contact_type      ENUM('Buyer','Seller','Both') NOT NULL,
  locality          VARCHAR(100),
  source            ENUM('Referral','Advertisement','Existing Client',
                         'Cold Call','Property Portal','Walk-in') NOT NULL,
  source_agent_name VARCHAR(100),
  referred_by_id    INT,
  notes             TEXT,
  FOREIGN KEY (referred_by_id) REFERENCES contacts(contact_id)
);

CREATE TABLE properties (
  property_id         INT           AUTO_INCREMENT PRIMARY KEY,
  listing_code        VARCHAR(20)  UNIQUE NOT NULL,
  owner_id            INT           NOT NULL,
  source_agent_name   VARCHAR(100),
  property_type       ENUM('Villa','Residential Plot','Commercial Plot',
                           'Office','Retail Space') NOT NULL,
  locality            VARCHAR(100) NOT NULL,
  address             VARCHAR(255),
  area_value          DECIMAL(10,2) NOT NULL,
  area_unit           ENUM('sqft','sqyards','acres') NOT NULL,
  asking_price        DECIMAL(15,2) NOT NULL,
  possession_status   ENUM('Ready','Under Construction') NOT NULL,
  expected_completion DATE,
  bedrooms            TINYINT,
  floors              TINYINT,
  road_facing         ENUM('East','West','North','South','NE','NW','SE','SW'),
  road_width_ft       INT,
  is_corner_plot      TINYINT(1) DEFAULT 0,
  seller_terms        TEXT,
  listed_date         DATE NOT NULL,
  status              ENUM('Active','Under Negotiation','Sold','Withdrawn')
                      DEFAULT 'Active',
  notes               TEXT,
  FOREIGN KEY (owner_id) REFERENCES contacts(contact_id)
);

CREATE TABLE buyer_requirements (
  requirement_id        INT           AUTO_INCREMENT PRIMARY KEY,
  buyer_id              INT           NOT NULL,
  property_type         ENUM('Villa','Residential Plot','Commercial Plot',
                             'Office','Retail Space','Any') NOT NULL,
  budget_min            DECIMAL(15,2),
  budget_max            DECIMAL(15,2) NOT NULL,
  area_min              DECIMAL(10,2),
  area_max              DECIMAL(10,2),
  area_unit             ENUM('sqft','sqyards','acres'),
  possession_preference ENUM('Ready Only','Any') DEFAULT 'Any',
  bedrooms_min          TINYINT,
  buyer_terms           TEXT,
  status                ENUM('Active','On Hold','Fulfilled','Cancelled')
                        DEFAULT 'Active',
  created_date          DATE NOT NULL,
  last_updated_date     DATE,
  notes                 TEXT,
  FOREIGN KEY (buyer_id) REFERENCES contacts(contact_id)
);

CREATE TABLE requirement_localities (
  id             INT          AUTO_INCREMENT PRIMARY KEY,
  requirement_id INT          NOT NULL,
  locality       VARCHAR(100) NOT NULL,
  FOREIGN KEY (requirement_id) REFERENCES buyer_requirements(requirement_id)
);

CREATE TABLE property_showings (
  showing_id     INT AUTO_INCREMENT PRIMARY KEY,
  requirement_id INT NOT NULL,
  property_id    INT NOT NULL,
  showing_date   DATE NOT NULL,
  method         ENUM('Photos/Video Shared','Location Shared','Site Visit') NOT NULL,
  buyer_response ENUM('Interested','Maybe','Not Interested','No Response Yet')
                 DEFAULT 'No Response Yet',
  notes          TEXT,
  FOREIGN KEY (requirement_id) REFERENCES buyer_requirements(requirement_id),
  FOREIGN KEY (property_id)    REFERENCES properties(property_id)
);

CREATE TABLE meetings (
  meeting_id           INT AUTO_INCREMENT PRIMARY KEY,
  property_id          INT NOT NULL,
  buyer_id             INT NOT NULL,
  meeting_date         DATE NOT NULL,
  meeting_number       TINYINT NOT NULL DEFAULT 1,
  buyer_offered_price  DECIMAL(15,2),
  seller_counter_price DECIMAL(15,2),
  outcome              ENUM('Terms Discussed','Offer Made','Agreement Reached',
                            'No Deal - Price Gap','No Deal - Terms Mismatch',
                            'No Deal - Buyer Withdrew','No Deal - Seller Withdrew',
                            'Follow-up Needed') NOT NULL,
  notes                TEXT,
  FOREIGN KEY (property_id) REFERENCES properties(property_id),
  FOREIGN KEY (buyer_id)    REFERENCES contacts(contact_id)
);

CREATE TABLE transactions (
  transaction_id                  INT           AUTO_INCREMENT PRIMARY KEY,
  property_id                     INT           UNIQUE NOT NULL,
  buyer_id                        INT           NOT NULL,
  seller_id                       INT           NOT NULL,
  final_sale_price                DECIMAL(15,2) NOT NULL,
  registration_date               DATE          NOT NULL,
  seller_commission_pct           DECIMAL(4,2)  NOT NULL DEFAULT 0.00,
  seller_commission_amt           DECIMAL(12,2),
  seller_commission_method        ENUM('Cash','Cheque','N/A') DEFAULT 'N/A',
  seller_commission_status        ENUM('Pending','Received','N/A') DEFAULT 'N/A',
  seller_commission_received_date DATE,
  buyer_commission_pct            DECIMAL(4,2)  NOT NULL DEFAULT 0.00,
  buyer_commission_amt            DECIMAL(12,2),
  buyer_commission_method         ENUM('Cash','Cheque','N/A') DEFAULT 'N/A',
  buyer_commission_status         ENUM('Pending','Received','N/A') DEFAULT 'N/A',
  buyer_commission_received_date  DATE,
  total_commission                DECIMAL(12,2),
  total_commission_received       DECIMAL(12,2),
  notes                           TEXT,
  FOREIGN KEY (property_id) REFERENCES properties(property_id),
  FOREIGN KEY (buyer_id)    REFERENCES contacts(contact_id),
  FOREIGN KEY (seller_id)   REFERENCES contacts(contact_id)
);