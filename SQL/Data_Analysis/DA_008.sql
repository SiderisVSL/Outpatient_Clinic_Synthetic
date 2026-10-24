SELECT
  p.patient_id,
  COUNT(a.appointment_id) AS appointments_num,
  COUNTIF(a.attendance_status = "Attended") AS attended_num
FROM
  `Outpatient_Clinic.patients_clean` AS p
  LEFT JOIN
  `Outpatient_Clinic.appointments_clean` AS a
ON
  p.patient_id = a.patient_id
GROUP BY
    p.patient_id