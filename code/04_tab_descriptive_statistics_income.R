# Purpose:
#   Calculate general and grouped descriptive statistics for hours worked and
#   monthly labour income.
# Inputs:
#   The cleaned `db_geih` object created by `03_cleaning_GEIH.R`.
# Outputs:
#   `tab_example`, a table of income statistics grouped by sex and formality.

tab_example <- db_geih |> 
  summarise(mean_num_hours = mean(num_hoursWorked),
            median_num_hours = median(num_hoursWorked),
            mean_num_income = mean(num_labIncome),
            median_num_income = median(num_labIncome))

tab_example <- db_geih |>
  group_by(bin_male, bin_formal) |>
  summarise(num_obs = n(),
            mean_num_income = mean(num_labIncome),
            sd_num_income = sd(num_labIncome),
            p25_num_income = quantile(num_labIncome, 0.25),
            p75_num_income = quantile(num_labIncome, 0.75),
            .groups = "drop")
