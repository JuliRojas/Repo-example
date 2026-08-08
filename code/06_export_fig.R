ggsave(
  filename = here("output", "figures", "fig_income_distribution.png"),
  plot = fig_income_distribution,
  width = 7,
  height = 4.5,
  dpi = 300,
  bg = "transparent"
)
