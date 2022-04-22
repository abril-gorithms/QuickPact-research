-- TABLE DEFINITION
CREATE DATABASE IF NOT EXISTS QuickPact;
USE QuickPact;
CREATE TABLE IF NOT EXISTS PROJECT (
    `ProjectID` CHAR(36) DEFAULT UUID()
    , `Title` VARCHAR(65535)
    , CONSTRAINT PK_PROJECT PRIMARY KEY (`ProjectID`)
);

CREATE TABLE IF NOT EXISTS ACTIVITY(
    `ProjectID` CHAR(36)
    , `Activity Name` VARCHAR(100)
    , CONSTRAINT PK_ACTIVITY PRIMARY KEY (
            `ProjectID`
            , `Activity Name`
        )
    , CONSTRAINT FK_ACTIVITY_PROJECT FOREIGN KEY (`ProjectID`)
        REFERENCES PROJECT(`ProjectID`)
);

CREATE TABLE IF NOT EXISTS PROJECTDATE(
    `ProjectID` CHAR(36)
    , `Date` DATE
    , CONSTRAINT PK_ACTIVITY PRIMARY KEY (
            `ProjectID`
            , `Date`
        )
    , CONSTRAINT FK_PROJECTDATE_PROJECT FOREIGN KEY (`ProjectID`)
        REFERENCES PROJECT(`ProjectID`)
);

CREATE TABLE IF NOT EXISTS CONSTITUENT(
    `ID` CHAR(36) DEFAULT UUID()
    , `ProjectID` CHAR(36)
    , `Name` VARCHAR(100)
    , `Address` VARCHAR (100)
    , `Email Address` VARCHAR(100)
    , `Contact Number` CHAR(11)
    , CONSTRAINT PK_CONSTITUENT PRIMARY KEY (ID)
    , CONSTRAINT FK_CONSTITUENT_PROJECT FOREIGN KEY (ProjectID)
        REFERENCES PROJECT (ProjectID)
);