/*Average charges by smoker (key insight: smokers pay much more)*/
SELECT smoker , avg(charges) AS avg_charges
from insurance_medical_forcast
GROUP BY smoker;

/*Top 5 highest charges (with details on individuals)*/
SELECT *
FROM insurance_medical_forcast
ORDER BY charges DESC
LIMIT 5;

/*Average charges by sex*/
SELECT sex, AVG(charges) AS avg_charges
FROM insurance_medical_forcast
GROUP BY sex;

/*Average charges by number of children*/
SELECT children, AVG(charges) AS avg_charges
FROM insurance_medical_forcast
GROUP BY children
ORDER BY children;

/*Count of smokers vs. non-smokers*/
SELECT smoker, COUNT(*) AS count
FROM insurance_medical_forcast
GROUP BY smoker;

/*Average BMI and charges by age group*/
SELECT 
    CASE 
        WHEN age < 25 THEN '18-24'
        WHEN age < 35 THEN '25-34'
        WHEN age < 45 THEN '35-44'
        WHEN age < 55 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    AVG(bmi) AS avg_bmi,
    AVG(charges) AS avg_charges
FROM insurance_medical_forcast
GROUP BY age_group
ORDER BY age_group;

/*Highest charges for smokers*/
SELECT *
FROM insurance_medical_forcast
WHERE smoker = 'yes'
ORDER BY charges DESC
LIMIT 5;

SELECT 
    MIN(age) AS min_age, MAX(age) AS max_age, AVG(age) AS avg_age,
    MIN(bmi) AS min_bmi, MAX(bmi) AS max_bmi, AVG(bmi) AS avg_bmi,
    MIN(charges) AS min_charges, MAX(charges) AS max_charges, AVG(charges) AS avg_charges
FROM insurance_medical_forcast;









