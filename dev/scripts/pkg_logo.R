
#  ------------------------------------------------------------------------
#
# Title : Package Logo
#    By : Jimmy Briggs
#  Date : 2026-07-11
#
#  ------------------------------------------------------------------------

man_figures_path <- file.path(this.path::this.proj(), "man/figures")
if (!dir.exists(man_figures_path)) dir.create(man_figures_path)

hex_img <- file.path(man_figures_path, "map.png")

# setup hex logo --------------------------------------------------------------------------------------------------

sysfonts::font_add_google("Ubuntu", "ubuntu")
showtext::showtext_auto()

# svg ---------------------------------------------------------------------

hexSticker::sticker(
  filename = "man/figures/hex.logo.svg",
  # package name
  package = pkgload::pkg_name(),
  p_x = 1,
  p_y = 1.4,
  p_color = "white",
  p_family = "ubuntu",
  p_fontface = "plain",
  p_size = 6,
  # image
  subplot = hex_img,
  s_x = 1,
  s_y = 0.8,
  s_width = 0.5,
  s_height = 1,
  asp = 0.9,
  dpi = 600,
  # hexagon
  h_size = 1.2,
  h_fill = "black",
  h_color = "cyan",
  # url
  url = "github.com/jimbrig/mapstyles",
  u_x = 1,
  u_y = 0.08,
  u_color = "cyan",
  u_family = "ubuntu",
  u_size = 1.2,
  u_angle = 30
)

# png ---------------------------------------------------------------------

hexSticker::sticker(
  filename = "man/figures/hex.logo.png",
  # package name
  package = pkgload::pkg_name(),
  p_x = 1,
  p_y = 1.4,
  p_color = "white",
  p_family = "ubuntu",
  p_fontface = "plain",
  p_size = 10,
  # image
  subplot = hex_img,
  s_x = 1,
  s_y = 0.8,
  s_width = 0.5,
  s_height = 1,
  asp = 0.9,
  dpi = 600,
  # hexagon
  h_size = 1.2,
  h_fill = "black",
  h_color = "cyan",
  # url
  url = "github.com/jimbrig/mapstyles",
  u_x = 1,
  u_y = 0.08,
  u_color = "cyan",
  # u_family = "ubuntu",
  u_size = 1.2,
  u_angle = 30
)


# set package logo ------------------------------------------------------------------------------------------------

usethis::use_logo("man/figures/hex.logo.png")




