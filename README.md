# Reproducible analysis with R

This teaching repository accompanies **A gentle introduction to R: From raw
data to results**, prepared by Julián David Rojas Aguilar and Ignacio
Sarmiento-Barbieri at Universidad de los Andes.

The repository follows one standard:

> A collaborator should be able to clone the repository, run one command, and
> recreate the analysis and its exported results.

The empirical question is:

> What do weekly hours and monthly labour income look like among employed
> adults in Bogotá, and how do they differ by sex and employment formality?

## Repository structure

```text
├── README.md
├── .gitignore
├── project.Rproj
├── code/
│   ├── main.R
│   ├── 00_setup.R
│   ├── 01_import.R
│   ├── 02_clean.R
│   ├── 03_descriptive.R
│   ├── 04_figures.R
│   └── 05_export.R
└── output/
    ├── figures/
    └── tables/
```

## Data

The analysis uses a teaching sample from Colombia's *Gran Encuesta Integrada
de Hogares* (GEIH). Each observation represents a person interviewed in
Bogotá. The combination of household, sequence, and person-order identifiers
distinguishes individuals.

The data are imported directly from <https://raw.githubusercontent.com/ignaciomsarmiento/datasets/main/GEIH_sample1.Rds>. The variables are described in the
[GEIH data dictionary](https://ignaciomsarmiento.github.io/GEIH2018_sample/dictionary.html).
An internet connection is therefore required every time the analysis runs.

## Requirements

The project requires R and the packages loaded in `code/00_setup.R`:

- `rio`
- `tidyverse`
- `here`
- `skimr`
- `gtsummary`
- `gt`
- `conflicted`
- `webshot2`

The setup script installs `pacman` when necessary. `pacman::p_load()` installs
any other missing packages and then loads them. For more information related to the packages versions used in the analysis, check the section `Session Information`.

## Reproduce the analysis

Open `project.Rproj` to activate relative paths and run the following command in RStudio:

```r
source("code/main.R")
```

`main.R` sources every numbered script in order. 

## Expected results

A successful execution recreates:

- `output/figures/fig_income_distribution.png`
- `output/figures/fig_income_by_sex_and_formality.png`
- `output/tables/tab_descriptive.png`

The `output/` directory is ignored by Git, so it's created at your local machine. The first figure corresponds to the distribution of 
monthly labor income among employed adults. The second figure disaggregates the distribution by
sex and type of employment (i.e., formal and informal workers). The third output (and the first
table) is descriptive statistics that shows the variability of the income across different
types of workers.

## Session information

```text
─ Session info ──────────────────────────────────────────────────────────────────────────────────────────────────────
 setting  value
 version  R version 4.5.1 (2025-06-13 ucrt)
 os       Windows 10 x64 (build 19045)
 system   x86_64, mingw32
 ui       RStudio
 language (EN)
 collate  Spanish_Colombia.utf8
 ctype    Spanish_Colombia.utf8
 tz       America/Bogota
 date     2026-08-07
 rstudio  2025.05.1+513 Mariposa Orchid (desktop)
 pandoc   NA
 quarto   1.6.42 @ C:\\PROGRA~1\\RStudio\\RESOUR~1\\app\\bin\\quarto\\bin\\quarto.exe

─ Packages ──────────────────────────────────────────────────────────────────────────────────────────────────────────
 package      * version date (UTC) lib source
 base64enc      0.1-6   2026-02-02 [1] CRAN (R 4.5.2)
 cachem         1.1.0   2024-05-16 [1] CRAN (R 4.5.1)
 chromote       0.5.1   2025-04-24 [1] CRAN (R 4.5.3)
 cli            3.6.6   2026-04-09 [1] CRAN (R 4.5.3)
 conflicted   * 1.2.0   2023-02-01 [1] CRAN (R 4.5.1)
 digest         0.6.39  2025-11-19 [1] CRAN (R 4.5.1)
 dplyr        * 1.2.1   2026-04-03 [1] CRAN (R 4.5.3)
 evaluate       1.0.5   2025-08-27 [1] CRAN (R 4.5.1)
 farver         2.1.2   2024-05-13 [1] CRAN (R 4.5.1)
 fastmap        1.2.0   2024-05-15 [1] CRAN (R 4.5.1)
 forcats      * 1.0.1   2025-09-25 [1] CRAN (R 4.5.1)
 fs             2.1.0   2026-04-18 [1] CRAN (R 4.5.3)
 generics       0.1.4   2025-05-09 [1] CRAN (R 4.5.1)
 ggplot2      * 4.0.3   2026-04-22 [1] CRAN (R 4.5.3)
 glue           1.8.1   2026-04-17 [1] CRAN (R 4.5.3)
 gt           * 1.3.0   2026-01-22 [1] CRAN (R 4.5.3)
 gtable         0.3.6   2024-10-25 [1] CRAN (R 4.5.1)
 gtsummary    * 2.5.1   2026-05-30 [1] CRAN (R 4.5.3)
 here         * 1.0.2   2025-09-15 [1] CRAN (R 4.5.1)
 hms            1.1.4   2025-10-17 [1] CRAN (R 4.5.1)
 htmltools      0.5.9   2025-12-04 [1] CRAN (R 4.5.2)
 jsonlite       2.0.0   2025-03-27 [1] CRAN (R 4.5.1)
 knitr          1.51    2025-12-20 [1] CRAN (R 4.5.2)
 later          1.4.8   2026-03-05 [1] CRAN (R 4.5.3)
 lifecycle      1.0.5   2026-01-08 [1] CRAN (R 4.5.2)
 lubridate    * 1.9.5   2026-02-04 [1] CRAN (R 4.5.3)
 magrittr       2.0.5   2026-04-04 [1] CRAN (R 4.5.3)
 memoise        2.0.1   2021-11-26 [1] CRAN (R 4.5.1)
 otel           0.2.0   2025-08-29 [1] CRAN (R 4.5.1)
 pacman       * 0.5.1   2019-03-11 [1] CRAN (R 4.5.1)
 pillar         1.11.1  2025-09-17 [1] CRAN (R 4.5.1)
 pkgconfig      2.0.3   2019-09-22 [1] CRAN (R 4.5.1)
 processx       3.9.0   2026-04-22 [1] CRAN (R 4.5.3)
 promises       1.5.0   2025-11-01 [1] CRAN (R 4.5.2)
 purrr        * 1.2.2   2026-04-10 [1] CRAN (R 4.5.3)
 R.methodsS3    1.8.2   2022-06-13 [1] CRAN (R 4.5.0)
 R.oo           1.27.1  2025-05-02 [1] CRAN (R 4.5.0)
 R.utils        2.13.0  2025-02-24 [1] CRAN (R 4.5.1)
 R6             2.6.1   2025-02-15 [1] CRAN (R 4.5.1)
 RColorBrewer   1.1-3   2022-04-03 [1] CRAN (R 4.5.0)
 Rcpp           1.1.2   2026-07-05 [1] CRAN (R 4.5.3)
 readr        * 2.2.0   2026-02-19 [1] CRAN (R 4.5.3)
 repr           1.1.7   2024-03-22 [1] CRAN (R 4.5.1)
 rio          * 1.3.0   2026-04-02 [1] CRAN (R 4.5.3)
 rlang          1.3.0   2026-07-05 [1] CRAN (R 4.5.3)
 rprojroot      2.1.1   2025-08-26 [1] CRAN (R 4.5.1)
 rstudioapi     0.19.0  2026-06-11 [1] CRAN (R 4.5.3)
 S7             0.2.2   2026-04-22 [1] CRAN (R 4.5.3)
 scales         1.4.0   2025-04-24 [1] CRAN (R 4.5.1)
 sessioninfo    1.2.4   2026-06-04 [1] CRAN (R 4.5.3)
 skimr        * 2.2.2   2026-01-10 [1] CRAN (R 4.5.2)
 stringi        1.8.7   2025-03-27 [1] CRAN (R 4.5.0)
 stringr      * 1.6.0   2025-11-04 [1] CRAN (R 4.5.2)
 tibble       * 3.3.1   2026-01-11 [1] CRAN (R 4.5.2)
 tidyr        * 1.3.2   2025-12-19 [1] CRAN (R 4.5.2)
 tidyselect     1.2.1   2024-03-11 [1] CRAN (R 4.5.1)
 tidyverse    * 2.0.0   2023-02-22 [1] CRAN (R 4.5.1)
 timechange     0.4.0   2026-01-29 [1] CRAN (R 4.5.3)
 tzdb           0.5.0   2025-03-15 [1] CRAN (R 4.5.1)
 vctrs          0.7.3   2026-04-11 [1] CRAN (R 4.5.3)
 webshot2     * 0.1.2   2025-04-23 [1] CRAN (R 4.5.3)
 websocket      1.4.4   2025-04-10 [1] CRAN (R 4.5.3)
 withr          3.0.3   2026-06-19 [1] CRAN (R 4.5.3)
 xfun           0.60    2026-07-09 [1] CRAN (R 4.5.3)
 xml2           1.6.0   2026-06-22 [1] CRAN (R 4.5.3)

 [1] C:/Users/judro/AppData/Local/R/win-library/4.5
 [2] C:/Program Files/R/R-4.5.1/library
 * ── Packages attached to the search path.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
```
