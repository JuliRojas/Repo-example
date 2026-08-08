# Purpose:
#   Import the GEIH teaching sample from its remote RDS file.
# Outputs:
#   `db_geih`, a tibble containing the imported person-level observations.
# Note:
#   Internet connection is needed when `pacman` or another required package is 
#   absent.

db_geih <- rio::import(
  "https://raw.githubusercontent.com/ignaciomsarmiento/datasets/main/GEIH_sample1.Rds"
) |>
  as_tibble()
