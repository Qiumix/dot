local max = {
  "calibre-ebook-viewer",
  "calibre-gui",
  "chromium",
  "code",
  "Emacs",
  "flameshot",
  "floorp",
  "gamescope",
  "jetbrains-idea",
  "Moonlight",
  "OBS",
  "ONLYOFFICE",
  "org.pipewire.Helvum",
  "QQ",
  "swayimg",
  "wechat",
}

do_for_all(max, function(app)
  hl.window_rule({
    match = { class = app },
    fullscreen = true,
    fullscreen_state = 1,
  })
end)
