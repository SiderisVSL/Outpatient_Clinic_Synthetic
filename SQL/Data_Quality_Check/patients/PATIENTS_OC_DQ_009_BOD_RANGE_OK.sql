SELECT
  MIN(date_of_birth) AS min_bod,
  MAX(date_of_birth) AS max_bod
FROM
  `Outpatient_Clinic.patients`
