hl.bind(mk({}, "Print"), spawn("grim - | wl-copy"), {})
hl.bind(mk({ ctrl }, "Print"), spawn("slurp | grim -g - - | wl-copy"), {})
hl.bind(mk({ alt }, "Print"), spawn("hyprctl activewindow -j | jq -r '.at,.size' | grim -g - - | wl-copy"), {})
hl.bind(mk({ ctrl, sh }, "F1"), spawn("way-record"), {})

hl.bind(mk({ mod, sh }, "E"), hl.dsp.exit(), {})
hl.bind(mk({ mod, sh }, "P"), hl.dsp.dpms({ action = "disable" }), {})
hl.bind(mk({ mod, alt }, "L"), spawn("hyprlock --config ~/.config/niri/others/hyprlock.conf"), {})

-- ============================================================================
-- Audio
-- ============================================================================

hl.bind(mk({}, "XF86AudioMicMute"), spawn("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind(
  mk({}, "XF86AudioRaiseVolume"),
  spawn("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05+"),
  { repeating = true, locked = true }
)
hl.bind(
  mk({}, "XF86AudioLowerVolume"),
  spawn("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05-"),
  { repeating = true, locked = true }
)
hl.bind(mk({}, "XF86AudioMute"), spawn("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- ============================================================================
-- Brightness
-- ============================================================================

hl.bind(
  mk({}, "XF86MonBrightnessUp"),
  spawn("brightnessctl --class=backlight set +10%"),
  { repeating = true, locked = true }
)
hl.bind(
  mk({}, "XF86MonBrightnessDown"),
  spawn("brightnessctl --class=backlight set 10%-"),
  { repeating = true, locked = true }
)
hl.bind(mk({}, "XF86Launch3"), spawn("rog-control-center"), { locked = true })

hl.bind(
  mk({ ctrl }, "XF86AudioRaiseVolume"),
  spawn("brightnessctl --class=backlight set +10%"),
  { repeating = true, locked = true }
)
hl.bind(
  mk({ ctrl }, "XF86AudioLowerVolume"),
  spawn("brightnessctl --class=backlight set 10%-"),
  { repeating = true, locked = true }
)
