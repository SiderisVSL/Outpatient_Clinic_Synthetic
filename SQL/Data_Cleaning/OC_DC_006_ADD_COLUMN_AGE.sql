ALTER TABLE
  `Outpatient_Clinic.appointments_clean`
ADD COLUMN
  age INT64;

UPDATE
   `Outpatient_Clinic.appointments_clean` AS a
SET age = 
  DATE_DIFF(a.appointment_date, p.date_of_birth, YEAR)
  FROM 
    `Outpatient_Clinic.patients_clean` AS p
  WHERE
    a.patient_id = p.patient_id; 