UPDATE
  `Outpatient_Clinic.patients_clean`
SET 
  area = UPPER(TRIM(area))
WHERE
  area <> UPPER(TRIM(area))