
#  ------------------------------------------------------------------------
#
# Title : Package Initialization Script
#    By : Jimmy Briggs
#  Date : 2026-09-14
#
#  ------------------------------------------------------------------------

usethis::create_package("mapstyles")
usethis::use_directory("dev", ignore = TRUE)

desc::desc_set(
  "Title" = "Modern Map Styles Toolkit",
  "Description" = "Provides an experiemental S7 object model for constructing, validating, converting, and managing Maplibre Style Specification documents."
)

desc::desc_set_dep("R", type = "Depends", version = ">= 4.2.0")
desc::desc_set_dep("rlang", type = "Imports", version = ">= 1.1.0")
desc::desc_set_dep("S7", type = "Imports", version = ">= 0.2")

desc::desc_set("Config/rcmdcheck/ignore-inconsequential-notes", "true")
desc::desc_set("Config/testthat/edition", "3")

desc::desc_normalize()

usethis::use_mit_license(copyright_holder = "Jimmy Briggs <jimmy.briggs@jimbrig.com>")

usethis::use_git()
usethis::use_github()
usethis::use_github_links()
