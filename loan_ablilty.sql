--Good afternoon pls import the Loan_ability dataset and perform the following query question

SELECT * FROM Loan;

--1. Retrieve all columns for applicants with a Graduate education.
SELECT * 
FROM Loan
WHERE Education = 'graduate';

--2. Count the number of applicants in each area (Rural, Urban, Semiurban).
SELECT COUNT(area) as 'numbers of applicants', area
FROM loan
GROUP BY area;

--3. Calculate the average loan amount for male applicants.
SELECT AVG(loan_amount), gender
FROM loan
WHERE gender = 'male'
GROUP BY gender;


SELECT AVG(loan_amount), gender
FROM loan
GROUP BY gender
HAVING gender = 'male';

--4. Find the total income for applicants with a Credit History of 1.
SELECT SUM(applicant_income) 'sum of applicant_income'
FROM loan
WHERE credit_history = 1;

--5. List the unique values in the "Dependents" column.
SELECT dependents, count(dependents) dependent_values
from loan
group by dependents;

--6. Retrieve applicants with a Loan Term of 360 months and a status of 'Y'.
SELECT *
FROM loan
WHERE term = 360  and status = 'y';

--7. Find the maximum Coapplicant Income for female applicants.
SELECT MAX(coapplicant_income), gender
FROM loan
GROUP BY gender
HAVING gender = 'female';

--8. Count the number of applicants with 0 Self Employment status.
SELECT COUNT(self_employed), self_employed
FROM loan
WHERE self_employed = 0
GROUP BY self_employed;

--9. Retrieve applicants with a Credit History of 0 and 'N' status.
SELECT *
FROM loan
WHERE credit_history = 0 and status = 'n';

--10. Calculate the average Loan Amount for married applicants with a Term of 360 months.
SELECT AVG(loan_amount), married, term
FROM loan
WHERE term = '360' and married = 'yes'
GROUP BY term, married;
--11. Find the top 5 highest Applicant Income values.
SELECT TOP 5 *
FROM loan
ORDER BY applicant_income DESC;

--MYSQL
SELECT *
FROM loan
ORDER BY applicant_income DESC
LIMIT 5;
--12. Retrieve applicants with a Coapplicant Income greater than 200,000.
SELECT *
FROM loan
WHERE coapplicant_income > 200000

--13. Count the number of applicants in each Credit History category (0 or 1).
SELECT COUNT(credit_history), credit_history
FROM loan
GROUP BY credit_history;
--14. Find the minimum Loan Amount for applicants in Rural areas.
SELECT MIN(loan_amount), area
FROM loan
GROUP BY area
HAVING area = 'rural'
--15. Retrieve applicants with missing or NULL values in the Self Employed column.
SELECT *
FROM loan
WHERE self_employed  NULL;