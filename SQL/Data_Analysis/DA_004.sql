SELECT
  EXTRACT(YEAR FROM appointment_date) AS app_year,
  EXTRACT(MONTH FROM appointment_date) AS app_month,
  COUNT(*) AS appointments_num
FROM
  `Outpatient_Clinic.appointments_clean`
GROUP BY
  app_year,
  app_month
ORDER BY
  app_year,
  app_month
  