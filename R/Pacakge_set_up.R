# LAB 44: CREATE AN R PACKAGE STEPS ----

# RESOURCES:
# - R PACKAGES: https://r-pkgs.org/index.html

# LIBRARIES FOR SETUP ----
library(usethis)
library(available)
library(devtools)
library(pkgdown)
library(tidyverse)

# 1.0 CHECK IF PACKAGE IS AVAILABLE ----
# - DO THIS IF GOING ON CRAN (PUBLIC)
# - NOT REQUIRED FOR PRIVATE
available::available("us.beers.dash")

# * Create package ----
usethis::create_package("../us.beers.dash")

# 2.0 SETTING THE PACKAGE UP ----

# * Setup git
usethis::use_git()

# * Code Repository ----
# - Requires setup of GH Auth Token: browse_github_token()
# - Refresh your R Session once you update your '.Renviron'
usethis::use_github(private = TRUE)

# * Basic Package Setup ----
usethis::use_roxygen_md()
usethis::use_mit_license(name = "Renaud LIBER")
usethis::use_readme_rmd()
usethis::use_news_md()
usethis::use_vignette("getting-started", title = "Getting Started with US Beers Dash")

# * Development ----
usethis::use_pipe()
usethis::use_tidy_eval()
usethis::use_tibble()

# * Create a Function ----
usethis::use_r("hr_summarize_attrition")

# * Sample Data ----
# - For testing/documentation purposes
telco_data <- readr::read_rds("../lab_44_package_setup/data/telco_data.rds")
usethis::use_data(telco_data)

# * Tests ----
usethis::use_testthat()
usethis::use_test("blah")

# * Pkgdown Website ----
usethis::use_pkgdown()
pkgdown::build_site()

# * Continuous Integration ----
# usethis::use_github_action()
# usethis::use_travis()
# usethis::use_jenkins()

# 3.0 SAMPLE DESCRIPTION FILE ----
# 
# Package: us.beers.dash
# Title: US Beers Rating Dashboard
# Version: 0.0.0.9000
# Authors@R: 
#   person(given = "Renaud",
#          family = "Liber",
#          role = c("aut", "cre"),
#          email = "liberrenaud@gmail.com",
#          comment = c(ORCID = "YOUR-ORCID-ID"))
# Description: Define some functions to visualize beer rating in the us
# License: MIT + file LICENSE
# Imports:
#     tidyquant,
#     dplyr,
#     ggplot2,
#     purrr,
#     officer,
#     flextable,
#     cli,
#     magrittr,
#     rlang (>= 0.1.2),
#     stringr,
#     forcats,
#     scales,
#     tidyselect
# Suggests:
#     tidyverse,
#     testthat,
#     knitr,
#     rmarkdown,
#     roxygen2
# VignetteBuilder: knitr
# Encoding: UTF-8
# LazyData: true
# Roxygen: list(markdown = TRUE)
# RoxygenNote: 7.1.1
# Depends:
#     R (>= 2.10)
# URL: https://github.com/mdancho84/hr.churn.test
# BugReports: https://github.com/mdancho84/hr.churn.test/issues
