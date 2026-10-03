require("stuff.windows.max")
require("stuff.windows.full")
require("stuff.windows.float")

hl.window_rule({
  border_size = 0,
  decorate = false,
  match = { class = "*" },
  no_blur = false,
  no_dim = true,
  no_shadow = true,
  opacity = "0.9 override",
  rounding = 0,
})
