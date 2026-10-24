SELECT
  age_group,
  COUNT(*) AS appointments_sum,
  COUNTIF(attendance_status = "No-show") AS no_show_sum,
  ROUND(AVG(no_show_flag)*100, 2) AS avg_no_show_rate
FROM
`Outpatient_Clinic.appointments_clean`
WHERE
  attendance_status <> "Cancelled"
GROUP BY
  age_group
ORDER BY
age_group DESC