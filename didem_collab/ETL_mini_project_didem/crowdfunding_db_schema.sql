CREATE TABLE category (
  cat_id VARCHAR(10) NOT NULL,
  categories VARCHAR(255) NOT NULL,
  PRIMARY KEY (cat_id)
);

Select * FROM category

CREATE TABLE subcategory (
  scat_id VARCHAR(20) NOT NULL,
  sub_categories VARCHAR(255) NOT NULL,
  PRIMARY KEY (scat_id)
);

Select * FROM subcategory

CREATE TABLE contacts (
  contact_id INT NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (contact_id)
);

Select * FROM contacts

CREATE TABLE campaign (
  cf_id INT NOT NULL,
  contact_id INT NOT NULL,
  company_name VARCHAR(255) NOT NULL, 
  description VARCHAR(255) NOT NULL,
  goal INT NOT NULL,
  pledged INT NOT NULL, 
  outcome VARCHAR(50) NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR(100) NOT NULL,
  currency VARCHAR(100) NOT NULL, 
  launch_date DATE NOT NULL,
  end_date DATE NOT NULL,
  cat_id VARCHAR(10) NOT NULL, 
  scat_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (cf_id),
  FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
  FOREIGN KEY (cat_id) REFERENCES category (cat_id),
  FOREIGN KEY(scat_id) REFERENCES subcategory (scat_id)
);

Select * FROM campaign
