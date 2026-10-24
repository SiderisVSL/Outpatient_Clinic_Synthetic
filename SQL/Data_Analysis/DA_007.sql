SELECT
  specialty,
  COUNTIF(attendance_status = "Attended") AS attended_num,
  ROUND(AVG(visit_duration_minutes),2) AS avg_visit_time
FROM
  `Outpatient_Clinic.appointments_clean`
WHERE
  visit_duration_minutes > 0
GROUP BY
  specialty