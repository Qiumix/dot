hl.bind(mk({ mod }, "F12"), spawn("~/.config/niri/scripts/toggle.fish waybar waybar"), {})
hl.bind(mk({ mod }, "F11"), spawn("~/.config/niri/scripts/toggle.fish bar-rs bar-rs open"), {})
hl.bind(mk({ mod }, "F10"), spawn("~/.config/niri/scripts/toggle.fish kanata kanata"), {})
hl.bind(mk({ mod }, "F9"), spawn("~/.config/niri/scripts/toggle.fish dms dms run"), {})
hl.bind(mk({ mod }, "F8"), spawn("~/.config/niri/scripts/toggle.fish showmethekey-gtk showmethekey-gtk -A -k"), {})

hl.bind(mk({ ctrl, alt }, "P"), spawn("playerctl play-pause --player=splayer-next"), {})
hl.bind(mk({ ctrl, alt }, "0"), spawn("playerctl next --player=splayer-next"), {})
hl.bind(mk({ ctrl, alt }, "9"), spawn("playerctl previous --player=splayer-next"), {})
