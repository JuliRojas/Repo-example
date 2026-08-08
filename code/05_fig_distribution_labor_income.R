# Purpose:
#   Construct the histogram of monthly labour income using Scott's rule for the
#   histogram bin width.
# Inputs:
#   The cleaned `db_geih` object created by `03_cleaning_GEIH.R`.
# Outputs:
#   `fig_income_distribution` ggplot object.

# Scott's rule.
num_binwidth <- 3.5 * sd(db_geih$num_labIncome) / length(db_geih$num_labIncome)^(1/3)
num_binwidth <- round(x = num_binwidth, digits = 2)

fig_income_distribution <- db_geih |>
  ggplot(mapping = aes(x = num_labIncome)) +
  geom_histogram(mapping = aes(y = (after_stat(count))/sum(after_stat(count))), 
                 color ="#FFFFFF", fill= "#3a5e8cFF", show.legend = FALSE, na.rm = TRUE, 
                 binwidth = num_binwidth, alpha = 0.8, closed = 'left') +
  coord_cartesian(xlim = c(0, quantile(db_geih$num_labIncome, probs = 0.99))) +
  +
  labs(
    title = "Distribution of monthly labor income among employed adults",
    subtitle = "",
    x = "Monthly labor income\n(Measured as millions of COP)",
    y = "Percent",
    caption = paste0(
      "Source. Own calculations using the GEIH sample.\n",
      "Note. Binwidth calculated through Scott\'s rule. The x-axis is zoomed at the 99th percentile."
    )
  )

fig_income_distribution
