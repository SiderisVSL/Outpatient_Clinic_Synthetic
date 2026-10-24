# Outpatient Clinic Attendance Analysis

A SQL portfolio project exploring appointment attendance at a fictional outpatient clinic, using synthetic data for educational purposes.

## Project Overview

This project covers data quality checks, data cleaning, exploratory analysis, and Tableau visualizations.

The goal is to understand how no-show rates vary across specialties, age groups, booking lead times, and reminder status.

## Tools

- **Google BigQuery:** Data quality checks, cleaning, and analysis using SQL.
- **Tableau Public:** Data visualization.

## Dataset

The cleaned dataset contains:

- **1,000 patients:** Patient characteristics, area, and chronic condition category.
- **5,000 appointments:** Booking and appointment dates, specialty, attendance status, reminder status, and visit duration.

The tables are linked through `patient_id`. Appointments cover 2024–2025.

Both the original and cleaned CSV files are included in this repository.

## Data Preparation

Key preparation steps included:

- Removing duplicate records.
- Standardizing specialty and area values.
- Checking missing values, date consistency, and patient references.
- Correcting nine negative visit durations under the assumption that they were sign-entry errors.
- Replacing one zero visit duration with `NULL`.
- Creating fields for no-show status, approximate age, age group, and booking lead time.

The SQL queries and report document the checks and cleaning decisions.

## Main Findings

The no-show rate is calculated as:

**No-show ÷ (Attended + No-show) × 100**

Cancelled appointments are excluded from this calculation.

- The overall no-show rate was **13.68%**.
- **General Medicine** had the highest number of appointments.
- **Orthopedics** had the highest no-show rate by specialty (**14.49%**), while **Cardiology** had the lowest (**11.53%**).
- Monthly no-show rates ranged from **8.29% in August 2024** to **16.59% in October 2025**.
- Appointments booked **31 or more days in advance** had the highest no-show rate among the lead-time groups (**18.27%**).
- Appointments with reminders had a lower no-show rate (**12.53%**) than those without reminders (**15.91%**). This pattern was not present in every specialty.

## Visualizations

Three Tableau charts present:

1. Monthly no-show rates.
2. No-show rates by specialty.
3. No-show rates by specialty and reminder status.

Chart exports are available in the [Charts folder](Charts/).

## Repository Contents

| Contents | Description |
|---|---|
| Raw CSVs | Original synthetic patient and appointment datasets |
| Clean CSVs | Cleaned datasets used for analysis |
| [sql](sql/) | Data quality, cleaning, and analysis queries |
| [Report](Report/) | Full project report |
| [Charts](Charts/) | Three Tableau chart exports |

The SQL files retain their original quality check, cleaning, and analysis folders, including subfolders.

## Recommendations

The clinic could test additional reminders for appointments booked far in advance and make cancellation or rescheduling easier.

It could also investigate why some specialties and age groups have higher no-show rates.

Monthly monitoring could help identify changes in attendance and evaluate whether these actions improve attendance.

## Limitations

- The data is synthetic, so the findings do not describe a real clinic.
- The analysis shows associations and does not prove causal effects.
- Age was calculated using calendar-year differences and may differ from completed age.
- Nine negative visit durations were corrected under an assumed source confirmation of entry errors. No actual source verification took place.
- Missing chronic condition values were kept separate from the category “None”.
- One zero visit duration was changed to `NULL` and excluded from average duration calculations.

## Author

Vasileios Sideris  
[GitHub Profile](https://github.com/SiderisVSL)
