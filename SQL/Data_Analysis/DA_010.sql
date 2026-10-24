SELECT
  specialty,
  COUNT(*) AS appointments_num,
  ROUND(AVG(lead_time_days),2) AS avg_lead_time
FROM
  `Outpatient_Clinic.appointments_clean`
GROUP BY
  specialty
ORDER BY
  appointments_num DESC
