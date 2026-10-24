ALTER TABLE
  `Outpatient_Clinic.appointments_clean`
ADD COLUMN
  lead_time_days INT64;

UPDATE
  `Outpatient_Clinic.appointments_clean`
SET 
  lead_time_days = DATE_DIFF(appointment_date, booking_date, DAY)
WHERE
  TRUE;