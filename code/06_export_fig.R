# Purpose:
#   Export the labor-income distribution figure as a publication-ready PNG.
# Inputs:
#   `fig_income_distribution`, created by `05_fig_distribution_labor_income.R`.
# Outputs:
#   `output/figures/fig_income_distribution.png`.

ggsave(
  filename = here("output", "figures", "fig_income_distribution.png"),
  plot = fig_income_distribution,
  width = 7,
  height = 4.5,
  dpi = 300,
  bg = "transparent"
)
