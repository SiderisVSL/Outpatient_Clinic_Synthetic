SELECT
  appointment_id, attendance_status, visit_duration_minutes
FROM
  `Outpatient_Clinic.appointments`
WHERE
  visit_duration_minutes IS NOT NULL AND (attendance_status = "No-show" or attendance_status = "Cancelled")
