SELECT
  patient_id,
  area
FROM
  `Outpatient_Clinic.patients`
WHERE
  area IS NULL
  OR TRIM(area) = '';