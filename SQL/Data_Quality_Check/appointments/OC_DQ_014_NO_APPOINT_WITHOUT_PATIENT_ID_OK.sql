SELECT
  a.patient_id,
  a.appointment_id
FROM
  `Outpatient_Clinic.appointments_clean` AS a
LEFT JOIN
  `Outpatient_Clinic.patients_clean` AS p
ON a.patient_id = p.patient_id
WHERE
  p.patient_id IS NULL