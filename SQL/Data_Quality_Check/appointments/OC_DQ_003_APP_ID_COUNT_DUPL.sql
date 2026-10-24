SELECT
  appointment_id, count(*) AS duplicate_app_id
FROM
  `Outpatient_Clinic.appointments`
GROUP BY
  appointment_id
HAVING 
  duplicate_app_id > 1