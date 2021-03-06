CREATE DATABASE SEO;

USE SEO;

CREATE TABLE Customer (id INT(10) AUTO_INCREMENT, name VARCHAR(20), created INT(15), lastModified INT(15), creator VARCHAR(20), lastModifiedBy VARCHAR(20), PRIMARY KEY (id));

CREATE TABLE Site (id INT(10) AUTO_INCREMENT, PrimaryUrl VARCHAR(255), customerID INT(10), created INT(15), lastModified INT(15), creator VARCHAR(20), lastModifiedBy VARCHAR(20), PRIMARY KEY (id));

CREATE TABLE AnalyticsProperty (id INT(10) AUTO_INCREMENT, siteID INT(20), primaryUrl VARCHAR(255), created INT(15), lastModified INT(15), creator VARCHAR(20), lastModifiedBy VARCHAR(20), PRIMARY KEY (id));

CREATE TABLE Users (id INT(10) AUTO_INCREMENT, username VARCHAR(60), password VARCHAR(60), name VARCHAR(60), created INT(15), lastModified INT(15), creator VARCHAR(20), lastModifiedBy VARCHAR(20), PRIMARY KEY (id));

CREATE TABLE Report (id INT(10) AUTO_INCREMENT, customerID INT(10), siteID INT(20), created INT(15), lastModified INT(15), creator VARCHAR(20), lastModifiedBy VARCHAR(20), PRIMARY KEY (id));

CREATE TABLE CrawlError (id INT(10) AUTO_INCREMENT, reportID INT(10), url VARCHAR(255), type VARCHAR(15), platform VARCHAR(20), errorCount INT(15), created INT(15), lastModified VARCHAR(30), creator VARCHAR(20), lastModifiedBy VARCHAR(30), PRIMARY KEY (id));
