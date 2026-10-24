SELECT
  attendance_status,
  COUNT(*) AS appointments_num,
  (COUNT(*)*100/5000) AS appointments_pct
FROM
  `Outpatient_Clinic.appointments_clean`
GROUP BY
  attendance_status
ORDER BY
  appointments_num DESC