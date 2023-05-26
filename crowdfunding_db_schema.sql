CREATE TABLE Contacts (
contact_id INTEGER,
first_name VARCHAR(30),
last_name VARCHAR(30),
email VARCHAR(50),
PRIMARY KEY (contact_id)
);

CREATE TABLE Category (
category_id VARCHAR(5),
category VARCHAR(30),
PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
subcategory_id VARCHAR(8),
subcategory VARCHAR(30),
PRIMARY KEY (subcategory_id)
);

CREATE TABLE Campaign (
cf_id INTEGER,
contact_id INTEGER NOT NULL,
company_name VARCHAR(50),
description VARCHAR(80),
goal FLOAT,
pledged FLOAT,
outcome VARCHAR(50),
backers_count INTEGER,
country VARCHAR(5),
currency VARCHAR(5),
launch_date VARCHAR(15),
end_date VARCHAR(15),
category_id VARCHAR(5),
subcategory_id VARCHAR(8),
PRIMARY KEY (cf_id),
FOREIGN KEY (category_id) REFERENCES Category (category_id),
FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id),
FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id)
);