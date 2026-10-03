-- Start daemon on login
hl.exec_cmd("snappy-switcher --daemon")

-- Alt+Tab (standard MRU)
hl.bind("ALT + Tab", hl.dsp.exec_cmd("snappy-switcher next --mod alt"))

-- Super+Tab (workspace-filtered)
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("snappy-switcher next --workspace --mod super"))
