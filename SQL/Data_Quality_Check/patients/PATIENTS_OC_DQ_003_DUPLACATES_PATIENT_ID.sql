SELECT
  patient_id, COUNT(*) AS dupl_patient_id
FROM
  `Outpatient_Clinic.patients`
GROUP BY
  patient_id
HAVING
  dupl_patient_id > 1