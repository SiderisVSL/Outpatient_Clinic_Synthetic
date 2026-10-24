SELECT
  EXTRACT(DAYOFWEEK FROM appointment_date) AS weekday,
  COUNT(*) AS appointment_num,
  COUNTIF(attendance_status = "No-show") AS no_show_num,
  ROUND(AVG(no_show_flag) * 100, 2) AS avg_no_show
FROM
  `Outpatient_Clinic.appointments_clean`
WHERE
  attendance_status <> "Cancelled"
GROUP BY
  weekday
ORDER BY
  weekday