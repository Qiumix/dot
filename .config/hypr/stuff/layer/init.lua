require("stuff.layer.bg")
require("stuff.layer.blur")
require("stuff.layer.noblur")

hl.layer_rule({
  match = { namespace = ".*" },
  blur = true,
})

-- Prefer no CSD
hl.config({ general = { no_focus_fallback = true } })
