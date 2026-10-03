local float_app = {
  {
    title = "Floating Window - Show Me The Key",
    size = { "0.3 * monitor_w", "80" },
    move = { "0", "920" },
    ---
  },
  {
    title = "SPlayer-Next - Desktop Lyric",
    size = nil,
    move = { "850", "800" },
    ---
  },
}
do_for_all(float_app, function(app_spec)
  hl.window_rule({
    match = { title = app_spec.title },
    float = true,
    size = app_spec.size,
    move = app_spec.move,
    no_blur = true,
    pin = true,
    fullscreen = false,
  })
end)

hl.window_rule({
  match = { class = "QQ", float = true },
  center = true,
})
