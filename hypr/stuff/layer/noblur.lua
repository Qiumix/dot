local dmsBgLayers = {
  "^dms:control-center:background$",
  "^dms:dash:background$",
  "^dms:osd:background$",
  "^dms:battery:background$",
  "^dms:clipboard-popout:background$",
  "^dms:app-launcher:background$",
  "^dms:process-list-popout:background$",
  "^dms:notification-popup:background$",
  "^dms:notification-center-popout:background$",
  "^dms:tray-menu-window:background$",
}

do_for_all(dmsBgLayers, function(ns)
  hl.layer_rule({
    match = { namespace = ns },
    blur = false,
  })
end)
