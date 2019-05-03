/* Create Database Tables
 * 
 * Authors: The Excelerators
 * Date:    Spring 2019
 */


-- Location tables

CREATE TABLE continent (

    continentID    SERIAL       PRIMARY KEY,
    continentName  VARCHAR(255) NOT NULL

);

CREATE TABLE country (

    countryID      SERIAL       PRIMARY KEY,
    continentID    INTEGER      REFERENCES continent (continentID),

    countryName    VARCHAR(255) NOT NULL

);

CREATE TABLE region (

    regionID       SERIAL  PRIMARY KEY,
    countryID      INTEGER REFERENCES country (countryID),

    regionName     VARCHAR(255) NOT NULL

);


-- Metric tables

CREATE TABLE metric_type (

    metricTypeID   SERIAL PRIMARY KEY,

    metricTypeName VARCHAR(255) NOT NULL,
    metricTypeDesc VARCHAR(255)

);

CREATE TABLE metric (

    metricID       SERIAL PRIMARY KEY,
    metricTypeID   INTEGER REFERENCES metric_type (metricTypeID),

    metricName     VARCHAR(255) NOT NULL,
    metricDesc     VARCHAR(255)

);


-- Entity tables

CREATE TABLE eye_bank (

    eyeBankID      SERIAL PRIMARY KEY,
    regionID       INTEGER REFERENCES region (regionID),

    eyeBankName    VARCHAR(255) NOT NULL,
    eyeBankDesc    VARCHAR(255)

);

CREATE TABLE pam (

    pamID          SERIAL PRIMARY KEY,

    pamFName       VARCHAR(255) NOT NULL,
    pamLName       VARCHAR(255) NOT NULL,
    pamEmail       VARCHAR(255) NOT NULL

);


-- Relationship tables

CREATE TABLE pam_region (

    pamRegionID    SERIAL PRIMARY KEY,
    pamID          INTEGER REFERENCES pam (pamID),
    regionID       INTEGER REFERENCES region (regionID),

    startDate      DATE NOT NULL DEFAULT CURRENT_DATE,
    endDate        DATE

);

CREATE TABLE eyebank_metric (

    eyeBankMetricID SERIAL PRIMARY KEY,
    eyeBankID       INTEGER REFERENCES eye_bank (eyeBankID),
    metricID        INTEGER REFERENCES metric (metricID),

    measure         NUMERIC,
    startDate       DATE NOT NULL,
    endDate         DATE NOT NULL

);
