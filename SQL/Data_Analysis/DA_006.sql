SELECT
  specialty,
  COUNT(*) AS attended_num,
  ROUND(AVG(visit_duration_minutes), 2) AS avg_visit_time
FROM
  `Outpatient_Clinic.appointments_clean`
WHERE
  attendance_status = "Attended"
  AND visit_duration_minutes > 0
GROUP BY
  specialty
ORDER BY
  attended_num DESC