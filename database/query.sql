SELECT `ProjectID`
    , `Title`
FROM project

SELECT MAX(DATE)
    , `ProjectID`
FROM ProjectDate
GROUP BY `ProjectID`

CREATE VIEW Pro AS
SELECT P.`ProjectID` AS ID
    , `Title`
    , MAX(DATE) AS D8
    , PD.`ProjectID`
FROM `project` AS P
INNER JOIN `ProjectDate` AS PD
    ON P.`ProjectID` = PD.`ProjectID`
GROUP BY P.`ProjectID`

SELECT `ID`
    , `Title`
    , `D8`
FROM Pro
WHERE `D8` < ADDDATE (CURDATE(), INTERVAL -3 YEAR)



WHERE D3 < ADDDATE (D3, INTERVAL -3 YEAR)

SELECT ADDDATE (CURDATE(), INTERVAL 3 YEAR)

