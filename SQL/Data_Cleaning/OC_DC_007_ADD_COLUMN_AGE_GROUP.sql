ALTER TABLE
  `Outpatient_Clinic.appointments_clean`
ADD COLUMN
  age_group STRING;

UPDATE
  `Outpatient_Clinic.appointments_clean`
SET
  age_group = 
    CASE
      WHEN age BETWEEN 0 and 17 THEN "0-17"
      WHEN age BETWEEN 18 AND 34 THEN "18-34"
      WHEN age BETWEEN 35 AND 49 THEN "35-49"
      WHEN age BETWEEN 50 AND 64 THEN "50-64"
      WHEN age > 64 THEN "65plus"
    END
WHERE
  TRUE;