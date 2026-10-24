SELECT
  a.appointment_id,
  a.patient_id,
  p.date_of_birth,
  a.appointment_date
FROM
  `Outpatient_Clinic.appointments` AS a
INNER JOIN
  `Outpatient_Clinic.patients` AS p
ON 
  a.patient_id = p.patient_id
WHERE
  p.date_of_birth > a.appointment_date