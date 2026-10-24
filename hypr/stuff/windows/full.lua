local fullApps = {
  "top.imsyy.splayer_next",
  "mpv",
}

do_for_all(fullApps, function(app)
  hl.window_rule({
    match = { class = app },
    fullscreen = true,
    fullscreen_state = 3,
  })
end)
