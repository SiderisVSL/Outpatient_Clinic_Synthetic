UPDATE 
  `Outpatient_Clinic.appointments_clean`
SET
  specialty = UPPER(TRIM(specialty))
WHERE
  specialty <> UPPER(TRIM(specialty))