hl.config({
  scrolling = {
    wrap_focus = false,
    wrap_swapcol = false,
  },
  binds = {},
  xwayland = { create_abstract_socket = true, force_zero_scaling = true },
  ecosystem = {
    no_update_news = true,
    no_donation_nag = true,
    enforce_permissions = true,
    ---
  },
})

require("stuff.config.animation")
require("stuff.config.decoration")
require("stuff.config.general")
require("stuff.config.misc")
