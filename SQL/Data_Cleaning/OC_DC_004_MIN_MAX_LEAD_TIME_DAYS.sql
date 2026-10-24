SELECT
  MIN(lead_time_days) AS min_lead_days,
  MAX(lead_time_days) AS max_lead_days
FROM
  `Outpatient_Clinic.appointments_clean`