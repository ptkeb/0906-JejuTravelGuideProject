DROP TABLE sight cascade constraint;

DROP TABLE category cascade constraint;

CREATE TABLE sight (
       sightid          			VARCHAR2(20) PRIMARY KEY,
       sightname               		VARCHAR2(20) NOT NULL,
       sightregion         			VARCHAR2(20) NOT NULL,
       sightcategory                VARCHAR2(50) NOT NULL
);

CREATE TABLE category (
       categoryid        			VARCHAR2(20) PRIMARY KEY,
       categoryname                		VARCHAR2(20) NOT NULL,
);

ALTER TABLE sight  ADD FOREIGN KEY (sightcategory) REFERENCES recipient  (categoryid);