SELECT
  p.area,
  COUNT(DISTINCT p.patient_id) AS patients_num,
  COUNTIF(a.appointment_id IS NULL) AS no_appointment,
  ROUND(COUNTIF(a.appointment_id IS NULL) * 100.0 / COUNT(DISTINCT p.patient_id), 2) AS no_appointment_pct
FROM
  `Outpatient_Clinic.patients_clean` AS p
LEFT JOIN
  `Outpatient_Clinic.appointments_clean` AS a
ON
  p.patient_id = a.patient_id
GROUP BY
  p.area
ORDER BY
  no_appointment_pct DESC