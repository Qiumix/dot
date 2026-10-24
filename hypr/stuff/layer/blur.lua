local dmsLayers = {
  "^launcher$",
  "^bar-rs$",
  "^dms:control-center$",
  "^dms:dash$",
  "^dms:osd$",
  "^dms:battery$",
  "^dms:clipboard$",
  "^dms:app-launcher$",
  "^dms:process-list-popout$",
  "^dms:notification-center-popout$",
  "^dms:notification-popup$",
  "^dms:tray-menu-window$",
}

do_for_all(dmsLayers, function(ns)
  hl.layer_rule({
    match = { namespace = ns },
    blur = true,
  })
end)
