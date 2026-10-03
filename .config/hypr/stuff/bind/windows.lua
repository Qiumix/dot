local step = 0.1
hl.bind(mk({ mod }, "EQUAL"), hl.dsp.layout("colresize +" .. step))
hl.bind(mk({ mod }, "MINUS"), hl.dsp.layout("colresize -" .. step))

hl.bind(mk({ mod }, "F"), hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }), {})

hl.bind(mk({ mod, sh }, "F"), hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }), {})

hl.bind(mk({ mod }, "Q"), hl.dsp.window.close(), { repeating = false })
hl.bind(mk({ mod }, "RETURN"), hl.dsp.window.float({ action = "toggle" }), {})

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
--------------------------------------------------------------------------------
-- HJKL
hl.bind(mk({ mod }, "H"), hl.dsp.layout("focus l"), { repeating = true })
hl.bind(mk({ mod }, "L"), hl.dsp.layout("focus r"), { repeating = true })
hl.bind(mk({ mod }, "J"), hl.dsp.focus({ workspace = "+1" }), { repeating = true })
hl.bind(mk({ mod }, "K"), hl.dsp.focus({ workspace = "-1" }), { repeating = true })

hl.bind(mk({ mod, ctrl }, "H"), hl.dsp.layout("swapcol l"), { repeating = true })
hl.bind(mk({ mod, ctrl }, "L"), hl.dsp.layout("swapcol r"), { repeating = true })
hl.bind(mk({ mod, ctrl }, "J"), hl.dsp.window.move({ workspace = "+1" }), { repeating = true })
hl.bind(mk({ mod, ctrl }, "k"), hl.dsp.window.move({ workspace = "-1" }), { repeating = true })

hl.bind(mk({ mod, sh }, "H"), hl.dsp.window.move({ x = -100, y = 0, relative = true }), { repeating = true })
hl.bind(mk({ mod, sh }, "L"), hl.dsp.window.move({ x = 100, y = 0, relative = true }), { repeating = true })
hl.bind(mk({ mod, sh }, "J"), hl.dsp.window.move({ x = 0, y = 100, relative = true }), { repeating = true })
hl.bind(mk({ mod, sh }, "K"), hl.dsp.window.move({ x = 0, y = -100, relative = true }), { repeating = true })

-- Arrow
hl.bind(mk({ mod }, "LEFT"), hl.dsp.layout("focus l"), { repeating = true })
hl.bind(mk({ mod }, "RIGHT"), hl.dsp.layout("focus r"), { repeating = true })
hl.bind(mk({ mod }, "DOWN"), hl.dsp.focus({ workspace = "+1" }), { repeating = true })
hl.bind(mk({ mod }, "UP"), hl.dsp.focus({ workspace = "-1" }), { repeating = true })

hl.bind(mk({ mod, ctrl }, "LEFT"), hl.dsp.layout("swapcol l"), { repeating = true })
hl.bind(mk({ mod, ctrl }, "RIGHT"), hl.dsp.layout("swapcol r"), { repeating = true })
hl.bind(mk({ mod, ctrl }, "DOWN"), hl.dsp.window.move({ workspace = "+1" }), { repeating = true })
hl.bind(mk({ mod, ctrl }, "UP"), hl.dsp.window.move({ workspace = "-1" }), { repeating = true })

hl.bind(mk({ mod, sh }, "LEFT"), hl.dsp.window.move({ x = -100, y = 0, relative = true }), { repeating = true })
hl.bind(mk({ mod, sh }, "RIGHT"), hl.dsp.window.move({ x = 100, y = 0, relative = true }), { repeating = true })
hl.bind(mk({ mod, sh }, "DOWN"), hl.dsp.window.move({ x = 0, y = 100, relative = true }), { repeating = true })
hl.bind(mk({ mod, sh }, "UP"), hl.dsp.window.move({ x = 0, y = -100, relative = true }), { repeating = true })

-- Mouse
hl.bind(mk({ mod }, "mouse_up"), hl.dsp.layout("focus l"), {})
hl.bind(mk({ mod }, "mouse_down"), hl.dsp.layout("focus r"), {})
hl.bind(mk({ mod, sh }, "mouse_down"), hl.dsp.focus({ workspace = "+1" }), {})
hl.bind(mk({ mod, sh }, "mouse_up"), hl.dsp.focus({ workspace = "-1" }), {})

hl.bind(mk({ mod, ctrl }, "mouse_up"), hl.dsp.layout("swapcol l"), {})
hl.bind(mk({ mod, ctrl }, "mouse_down"), hl.dsp.layout("swapcol r"), {})
hl.bind(mk({ mod, ctrl, sh }, "mouse_down"), hl.dsp.window.move({ workspace = "+1" }))
hl.bind(mk({ mod, ctrl, sh }, "mouse_up"), hl.dsp.window.move({ workspace = "-1" }))

--------------------------------------------------------------------------------

for i = 1, 9 do
  hl.bind(mk({ mod }, tostring(i)), hl.dsp.focus({ workspace = tostring(i) }), {})
  hl.bind(mk({ mod, sh }, tostring(i)), hl.dsp.window.move({ workspace = tostring(i) }), {})
end
