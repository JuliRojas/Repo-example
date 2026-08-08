# Purpose:
#   Execute the complete analysis pipeline by sourcing each script in order.
# Inputs:
#   The project-level scripts listed below.
# Outputs:
#   Tables and figures produced by the sourced scripts. For more information,
#   please, check the README.

source(file.path("code", "01_setup.R"))
source(here::here("code", "02_import.R"))
source(here::here("code", "03_cleaning_GEIH.R"))
source(here::here("code", "04_tab_descriptive_statistics_income.R"))
source(here::here("code", "05_fig_distribution_labor_income.R"))
source(here::here("code", "06_export_fig.R"))
