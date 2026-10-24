hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")

hl.env("XDG_CURRENT_DESKTOP", "Niri")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Niri")

-- QT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
-- xdgdesktopportal: Qt reads dark/light via the portal (darkman), live.
hl.env("QT_QPA_PLATFORMTHEME", "xdgdesktopportal")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
-- QT_QPA_PLATFORMTHEME "qt5ct:qt6ct"

-- GTK
hl.env("GDK_SCALE", "1.5")
hl.env("TDF_WINE_DPI", "144")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- ELECTRON
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Fcitx
-- GTK_IM_MODULE "fcitx"
hl.env("QT_IM_MODULE", "fcitx")
hl.env("XMODIFIERS", "@im=fcitx")
hl.env("SDL_IM_MODULE", "fcitx")

-- Java Applications
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")
hl.env("HMCL_UI_SCALE", "150%")
-- QT_SCALE_FACTOR "1.5"
hl.env("NVD_BACKEND", "direct")

-- Cursor config (use env or separate)
hl.env("XCURSOR_THEME", "Elaina")
hl.env("XCURSOR_SIZE", "24")
