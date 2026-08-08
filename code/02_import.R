db_geih <- rio::import(
  "https://raw.githubusercontent.com/ignaciomsarmiento/datasets/main/GEIH_sample1.Rds"
) |>
  as_tibble()
