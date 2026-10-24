SELECT
  chronic_condition_category,
  COUNT(*) AS patients_num,
  (COUNT(*)*100/1000) AS patients_pct 
FROM
  `Outpatient_Clinic.patients_clean`
GROUP BY
  chronic_condition_category
ORDER BY
  patients_num DESC