#  ------------------------------------------------------------------------
#
# Title : Package Documentation Script
#    By : Jimmy Briggs
#  Date : 2026-09-10
#
#  ------------------------------------------------------------------------

# roxygen2 --------------------------------------------------------------------------------------------------------

usethis::use_package_doc()

desc::desc_set("Config/roxygen2/markdown", "TRUE")
desc::desc_set("Config/roxygen2/version", utils::packageVersion("roxygen2"))

fs::dir_create("man/figures")
fs::dir_create("man/fragments")
fs::dir_create("man/roxygen")
fs::file_create("man/roxygen/meta.R")

attachment::att_amend_desc(use.config = TRUE, update.config = TRUE, path.c = "dev/attachment.config.yml")


# readme ----------------------------------------------------------------------------------------------------------

usethis::use_readme_md()

# changelog -------------------------------------------------------------------------------------------------------

file.create("CHANGELOG.md")
usethis::use_build_ignore("CHANGELOG.md")
usethis::use_github_action(url = "https://github.com/noclocks/.github/blob/main/.github/workflows/changelog.yml")


# badges ----------------------------------------------------------------------------------------------------------

usethis::use_badge(
  badge_name = "DeepWiki",
  href = "https://deepwiki.com/jimbrig/mapstyles",
  src = "https://deepwiki.com/badge.svg"
)

usethis::use_badge(
  badge_name = "R CMD CHECK",
  href = "https://github.com/jimbrig/mapsyles/actions/workflows/check.yml",
  src = "https://github.com/jimbrig/mapsyles/actions/workflows/check.yml/badge.svg"
)

usethis::use_badge(
  badge_name = "Automate Changelog",
  href = "https://github.com/jimbrig/mapsyles/actions/workflows/changelog.yml",
  src = "https://github.com/jimbrig/mapsyles/actions/workflows/changelog.yml/badge.svg"
)

usethis::use_badge(
  badge_name = "Format Check",
  href = "https://github.com/jimbrig/mapsyles/actions/workflows/format-check.yml",
  src = "https://github.com/jimbrig/mapsyles/actions/workflows/format-check.yml/badge.svg"
)

usethis::use_badge(
  badge_name = "pkgdown",
  href = "https://github.com/jimbrig/mapsyles/actions/workflows/pkgdown.yml",
  src = "https://github.com/jimbrig/mapsyles/actions/workflows/pkgdown.yml/badge.svg"
)

# vignettes -------------------------------------------------------------------------------------------------------

usethis::use_vignette("mapstyles", title = "Getting Started")


# pkgdown ---------------------------------------------------------------------------------------------------------

usethis::use_pkgdown_github_pages()
file.rename(".github/workflows/pkgdown.yaml", ".github/workflows/pkgdown.yml")
usethis::use_badge(
  "pkgdown",
  "https://github.com/jimbrig/mapstyles/actions/workflows/pkgdown.yml",
  "https://github.com/jimbrig/mapstyles/actions/workflows/pkgdown.yml/badge.svg"
)

usethis::use_directory("pkgdown", ignore = TRUE)
fs::file_move("_pkgdown.yml", "pkgdown/_pkgdown.yml")
pkgdown::build_favicons()
