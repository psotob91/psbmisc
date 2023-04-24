
<!-- README.md is generated from README.Rmd. Please edit that file -->

# psbmisc

This package provides a collection of miscellaneous functions for
personal use. Currently, it includes custom themes for `gtsummary`
tables in both English and Spanish.

## Installation

You can install the development version of `psbmisc` from GitHub with:

``` r
install.packages("devtools")
devtools::install_github("psotob91/psbmisc")
```

## Usage

Load the `gtsummary` and `psbmisc` packages:

``` r
library(gtsummary)
library(psbmisc)
```

We can set the prefered `theme`:

``` r
# Set English theme for gtsummary tables
set_gtsummary_theme(my_theme_en)
```

And then create the table:

``` r
# Create a tbl_summary
trial %>%
  select(age, grade, trt) %>%
  tbl_summary(by = trt) %>% 
  add_p(age ~ "t.test") %>% 
  separate_p_footnotes() %>% 
  modify_footnote(everything() ~ NA)
```

![](img/table.png)

## Contributors

| Name               | Email                  |
|--------------------|------------------------|
| Percy Soto-Becerra | <percys1991@gmail.com> |

## License

MIT + file LICENSE
