/* Create Database Tables
 * 
 * Authors: The Excelerators
 * Date:    Spring 2019
 */


-- Location tables

CREATE TABLE partner_group (

    partnerGroupID   SERIAL       PRIMARY KEY,
    partnerGroupName VARCHAR(255) NOT NULL

);

CREATE TABLE country (

    countryID      SERIAL       PRIMARY KEY,
    partnerGroupID INTEGER      REFERENCES partner_group (partnerGroupID),

    countryName    VARCHAR(255) NOT NULL

);

CREATE TABLE region (

    regionID   SERIAL       PRIMARY KEY,
    countryID  INTEGER      REFERENCES country (countryID),

    regionName VARCHAR(255) NOT NULL

);


-- Metric tables

CREATE TABLE metric_type (

    metricTypeID   SERIAL       PRIMARY KEY,

    metricTypeName VARCHAR(255) NOT NULL,
    metricTypeDesc VARCHAR(255)

);

CREATE TABLE metric (

    metricID     SERIAL       PRIMARY KEY,
    metricTypeID INTEGER      REFERENCES metric_type (metricTypeID),

    metricName   VARCHAR(255) NOT NULL,
    metricDesc   VARCHAR(255)

);


-- Entity tables

CREATE TABLE eye_bank (

    eyeBankID        SERIAL       PRIMARY KEY,
    regionID         INTEGER      REFERENCES region (regionID),

    eyeBankShortName VARCHAR(255) NOT NULL,
    eyeBankFullName  VARCHAR(255)

);


-- Relationship tables

CREATE TABLE eyebank_metric (

    eyeBankMetricID SERIAL   PRIMARY KEY,
    eyeBankID       INTEGER  REFERENCES eye_bank (eyeBankID),
    metricID        INTEGER  REFERENCES metric (metricID),

    measure         NUMERIC,
    startDate       DATE     NOT NULL,
    endDate         DATE     NOT NULL

);
