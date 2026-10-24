ALTER TABLE
  `Outpatient_Clinic.appointments_clean`
ADD COLUMN
  no_show_flag INT64;

UPDATE
  `Outpatient_Clinic.appointments_clean`
SET 
  no_show_flag = 
    CASE
      WHEN attendance_status = "No-show" THEN 1
      WHEN attendance_status = "Attended" THEN 0
      WHEN attendance_status = "Cancelled" THEN NULL
    END
WHERE 
  TRUE;