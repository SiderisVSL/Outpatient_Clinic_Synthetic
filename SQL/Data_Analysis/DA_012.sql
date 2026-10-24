SELECT
  CASE
    WHEN lead_time_days BETWEEN 0 AND 7 THEN "0-7"
    WHEN lead_time_days BETWEEN 8 AND 14 THEN "8-14"
    WHEN lead_time_days BETWEEN 15 AND 30 THEN "15-30"
    WHEN lead_time_days >= 31 THEN "31plus"
  END AS lead_time_group,
  COUNT(*) AS appointments_num,
  COUNTIF(attendance_status = "No-show" ) AS no_show_sum,
  ROUND(AVG(no_show_flag)*100, 2) AS avg_no_show
FROM
  `Outpatient_Clinic.appointments_clean`
WHERE
  attendance_status <> "Cancelled"
GROUP BY
  lead_time_group
ORDER BY
  no_show_sum DESC