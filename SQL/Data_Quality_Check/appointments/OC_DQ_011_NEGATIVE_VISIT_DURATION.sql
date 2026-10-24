SELECT
  appointment_id, visit_duration_minutes
FROM
  `Outpatient_Clinic.appointments`
WHERE
  visit_duration_minutes <= 0