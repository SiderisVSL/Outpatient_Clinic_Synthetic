SELECT
  appointment_date, booking_date
FROM
  `Outpatient_Clinic.appointments`
WHERE
  booking_date > appointment_date