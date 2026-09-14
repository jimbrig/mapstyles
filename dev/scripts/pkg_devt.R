
#  ------------------------------------------------------------------------
#
# Title : Package Development Script
#    By : Jimmy Briggs
#  Date : 2026-09-10
#
#  ------------------------------------------------------------------------

c(
  # aaa & zzz
  "aaa",
  "zzz",
  # utils
  "utils_pkg",
  "utils_"

) |>
  purrr::walk(usethis::use_r, open = FALSE)


