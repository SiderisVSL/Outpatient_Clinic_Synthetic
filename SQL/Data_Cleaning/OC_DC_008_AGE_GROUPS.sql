SELECT
  age_group,
  MIN(age) AS min_age,
  MAX(age) AS max_age,
  COUNT(*) AS appointment_count
FROM
  `Outpatient_Clinic.appointments_clean`
GROUP BY
  age_group
ORDER BY
  appointment_count DESC