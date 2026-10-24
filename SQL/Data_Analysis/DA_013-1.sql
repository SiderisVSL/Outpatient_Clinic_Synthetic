SELECT
  reminder_sent,
  COUNT(*) AS appointments_num,
  COUNTIF(attendance_status = "No-show") AS no_show_num,
  ROUND(AVG(no_show_flag)*100, 2) AS avg_no_show_flag
FROM
  `Outpatient_Clinic.appointments_clean`
WHERE
  attendance_status <> "Cancelled"
GROUP BY
  reminder_sent
