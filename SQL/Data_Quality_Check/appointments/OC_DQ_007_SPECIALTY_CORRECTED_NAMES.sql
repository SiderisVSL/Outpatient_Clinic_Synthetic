SELECT
  DISTINCT UPPER(TRIM(specialty)) AS corrected_names
FROM
  `Outpatient_Clinic.appointments`