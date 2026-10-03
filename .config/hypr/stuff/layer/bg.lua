local wallpaperNamespaces = {
  "awww-daemon",
}

do_for_all(wallpaperNamespaces, function(ns)
  hl.layer_rule({
    name = "bg",
    match = { namespace = ns },
    blur = false,
    blur_popups = false,
    order = -1,
    no_anim = true,
  })
end)
