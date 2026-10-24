UPDATE
  `Outpatient_Clinic.appointments_clean`
SET
  visit_duration_minutes =
  CASE
    WHEN visit_duration_minutes < 0 THEN ABS(visit_duration_minutes)
    WHEN visit_duration_minutes = 0 THEN NULL
    ELSE  visit_duration_minutes
  END
WHERE
  visit_duration_minutes <= 0 