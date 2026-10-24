SELECT
  specialty,
  COUNT(*) AS appointments_num,
  COUNTIF(attendance_status = "Attended") AS attended_num,
  COUNTIF(attendance_status = "No-show") AS no_show_num,
  COUNTIF(attendance_status = "Cancelled") AS cancelled_num,
  ROUND(AVG(no_show_flag)*100, 2) AS no_show_rate
FROM
  `Outpatient_Clinic.appointments_clean`
GROUP BY
  specialty
ORDER BY
  appointments_num DESC