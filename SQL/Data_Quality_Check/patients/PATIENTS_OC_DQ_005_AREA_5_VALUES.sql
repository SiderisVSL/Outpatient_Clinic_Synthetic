SELECT
  DISTINCT UPPER(TRIM(area)) AS corrected_area
FROM
  `Outpatient_Clinic.patients`