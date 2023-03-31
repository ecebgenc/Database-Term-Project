
#QUERY1 Bring the talents whose results are above 80 from the tests they took and whose title includes the word "developer".
SELECT DISTINCT T.FIRST_NAME, T.LAST_NAME
FROM TALENT as T NATURAL JOIN APPLY as AP, POSITION as P
WHERE AP.POSITION_ID = P.POSITION_ID AND T.TALENT_ID = AP.TALENT_ID AND T.TITLE LIKE '%Developer%'
	  AND EXISTS (SELECT * 
				  FROM TEST NATURAL JOIN TAKE 
                  WHERE TEST.RESULT > 80 AND TAKE.TALENT_ID = T.TALENT_ID);

#QUERY2 Bring the resume links of the talents who attend the "Hackaton" event organized by the recruiter "Mert and Sons".
SELECT T.RESUME_LINK
FROM TALENT T NATURAL JOIN ATTEND A
WHERE EXISTS (SELECT * FROM EVENT E NATURAL JOIN RECRUITER as R WHERE R.COMPANY_NAME = 'Mert and Sons' AND E.EVENT_TYPE = 'Hackaton' AND E.EVENT_ID = A.EVENT_ID);

#QUERY3 Bring the names and results of the hiring projects submitted by the talents who scored 70 and above from the tests provided in the application.
SELECT P.PROJECT_NAME, S.RESULT
FROM SUBMIT AS S NATURAL JOIN TALENT AS T,POSITION AS P
WHERE P.PROJECT_ID=S.PROJECT_ID AND EXISTS
	(SELECT *
    FROM TEST AS TE NATURAL JOIN TAKE AS TA 
    WHERE TA.TALENT_ID=T.TALENT_ID AND TE.RESULT>=70)
ORDER BY S.RESULT DESC;

#QUERY4 Bring the events organized by the recruiters who look for the skill "sql" in their positions.
SELECT DISTINCT E.EVENT_NAME
FROM EVENT AS E NATURAL JOIN RECRUITER AS R
WHERE R.RECRUITER_ID IN(
	SELECT P.RECRUITER_ID
    FROM POSITION AS P NATURAL JOIN REQ_SKILL AS REQ
    WHERE REQ.SKILL LIKE "%sql%");
    
#QUERY5 Find the corresponding recruiters location and the position name that have more applicants (i.e. talents applied) than the average number of applicants applied to each position. 
SELECT P.POSITION_NAME, R.LOCATION
FROM POSITION AS P, RECRUITER AS R, 
	(SELECT AP.POSITION_ID, COUNT(*)
	FROM APPLY AS AP
	GROUP BY AP.POSITION_ID
	HAVING COUNT(*)>ALL
		(SELECT AVG(C)
		FROM 
			(SELECT AP.POSITION_ID, COUNT(*) AS C
			FROM APPLY AS AP
			GROUP BY AP.POSITION_ID) AS APP)) AS TAB
WHERE TAB.POSITION_ID=P.POSITION_ID AND R.RECRUITER_ID=P.RECRUITER_ID;

#QUERY6 Bring the names and the e-mail adresses of the talents who attend the events organized in April 2021 and the names of the recruiters who organized these events.
SELECT T.FIRST_NAME,T.LAST_NAME,T.E_MAIL, RE.COMPANY_NAME
FROM TALENT AS T NATURAL JOIN ATTEND AS A, RECRUITER AS RE
WHERE EXISTS
	(SELECT *
    FROM EVENT AS E NATURAL JOIN RECRUITER AS R 
    WHERE E.EVENT_DATE LIKE "%2021-04%" AND E.EVENT_ID=A.EVENT_ID AND R.RECRUITER_ID=RE.RECRUITER_ID)
ORDER BY T.FIRST_NAME;


####################

#Dashboard Two different dashboard displays were created. You can find them below.
SELECT p.position_id as PositionId, p.position_name as PositionName, p.estimated_salary as EstimatedSalary, AVG(t.expected_salary) as AvgExpectedSalary, r.company_name as CompanyName, 
	   SUBSTRING(r.location,locate('/',r.location),20) as CompanyLocation, count(*) as NumOfApplicants, AVG(age) as AverageAge, AVG(results) as AvgTestResults
FROM position p natural join recruiter r, apply a, talent t,
	(SELECT p.position_id, s.talent_id, s.result as results
	 FROM submit as s natural join position as p) as res
WHERE a.position_id = p.position_id AND res.position_id = p.position_id AND t.talent_id = a.talent_id
GROUP BY p.position_id, p.position_name, p.estimated_salary, r.company_name, r.location
ORDER BY AvgTestResults DESC;

SELECT r.rid as TotalRecruiters, t.tid as TotalApplicants, a.aid as TotalApplications, p.pid as TotalPositions, e.eid as TotalEvents, s.sid as TotalProjectsSubmitted
FROM (SELECT count(recruiter_id) rid FROM recruiter) r, 
	 (SELECT count(talent_id) tid FROM talent) t, 
     (SELECT count(position_id) pid FROM position) p, 
     (SELECT count(event_id) eid FROM event) e, 
     (SELECT count(*) sid FROM submit) s,
	 (SELECT count(*) aid FROM apply) a;
     
###############

#Triggers 3 different triggers were created. 
     
#1st trigger If applicant age is below 18, an error message (50001) occurs as below and restricts the insertion of the data. 
DROP TRIGGER IF EXISTS TALENT_AGE_WARNING;

delimiter //
CREATE TRIGGER TALENT_AGE_WARNING 
BEFORE INSERT ON TALENT
FOR EACH ROW
IF NEW.AGE < 18 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'TALENT SHOULD BE OLDER THAN 18 YEARS OLD!';
END IF; //
delimiter ;

#Control query for 1st trigger
INSERT INTO TALENT VALUES (8, 579067754, "xtIniz@example.com", "Melda", "Toprak", "Ankara", 17, 
15, "Software Developer", "kadin", "http://alpP.com/");

#2nd trigger If expected salary of the applicant is more than the estimated salary of the corresponding position she applies, then expected salary becomes the estimated salary.
DROP TRIGGER IF EXISTS SALARY_WARNING;

delimiter //
CREATE TRIGGER SALARY_WARNING
BEFORE INSERT ON TALENT
FOR EACH ROW
BEGIN
IF NEW.EXPECTED_SALARY > (SELECT MAX(EXPECTED_SALARY)
FROM TALENT AS T, POSITION AS P, APPLY AS A 
WHERE A.POSITION_ID = P.POSITION_ID AND A.TALENT_ID = T.TALENT_ID AND EXPECTED_SALARY > ESTIMATED_SALARY)
THEN
SET NEW.EXPECTED_SALARY = MAX(ESTIMATED_SALARY);
END IF; 
END; //
delimiter ;

#Control query for the 2nd trigger
INSERT INTO TALENT VALUES (6, 579967755, "xteniz@example.com", "Meriç", "Toprak", "Ankara", 
30, 31643, "Software Developer", "kadin", "http://alp.com/");

#3rd trigger If a test result of an applicant is below 0, then the corresponding result updated as 0. 
DROP TRIGGER IF EXISTS RESULT_WARNING;

delimiter //
CREATE TRIGGER RESULT_WARNING 
BEFORE INSERT ON TEST
FOR EACH ROW
BEGIN
IF NEW.RESULT < 0 THEN
SET NEW.RESULT = 0;
END IF; 
END; //
delimiter ;

#Control query for the 3rd trigger
INSERT INTO TEST VALUES (8911, "modi", "voluptatem", -40);
