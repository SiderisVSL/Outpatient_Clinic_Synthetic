SELECT
  visit_duration_minutes
FROM
  `Outpatient_Clinic.appointments`
WHERE
  visit_duration_minutes IS NULL AND attendance_status = "Attended"