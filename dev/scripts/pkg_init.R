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
usethis::use_directory(".github", ignore = TRUE)
usethis::use_git_ignore(c("*.html"), ".github")

file.create("AGENTS.md")
usethis::use_build_ignore("AGENTS.md")
usethis::use_directory(".cursor", TRUE)
usethis::use_git_ignore(c("mcp.env"), ".cursor")
usethis::use_directory(".vscode", ignore = TRUE)

file.create(".Rprofile")
usethis::use_build_ignore(".Rprofile")

usethis::use_build_ignore("mapstyles.code-workspace")
usethis::use_build_ignore(".editorconfig")
usethis::use_build_ignore(".gitattributes")
usethis::use_build_ignore(".cursorignore")

attachment::att_amend_desc(use.config = TRUE, update.config = TRUE, path.c = "dev/attachment.config.yml")

usethis::use_testthat()
usethis::use_test("mapstyles")
usethis::use_spell_check()
cat(
  "if (requireNamespace(\"spelling\", quietly = TRUE)) {",
  "  spelling::spell_check_test(",
  "    vignettes = TRUE,",
  "    error = FALSE,",
  "    skip_on_cran = TRUE",
  "  )",
  "}",
  "",
  file = "tests/spelling.R",
  sep = "\n",
  append = FALSE
)
spelling::update_wordlist()

usethis::use_air()
cat(
  "[format]",
  "line-width = 120",
  "indent-width = 2",
  "indent-style = \"space\"",
  "line-ending = \"auto\"",
  "persistent-line-breaks = true",
  "skip = [\"tryCatch\", \"tribble\", \"if\"]",
  "",
  file = "air.toml",
  sep = "\n",
  append = FALSE
)
sys::exec_wait("air", c("format", "."))



usethis::use_github_action("check-standard", save_as = "check.yml")
usethis::use_github_action(url = "https://github.com/posit-dev/setup-air/blob/main/examples/format-suggest.yaml", save_as = "format-suggest.yml")
usethis::use_github_action(url = "https://github.com/posit-dev/setup-air/blob/main/examples/format-check.yaml", save_as = "format-check.yml")
fs::file_create(".github/README.md")
fs::file_create(".github/dependabot.yml")
# fs::file_create(".github/FUNDING.yml")
usethis::use_r_universe_badge()

