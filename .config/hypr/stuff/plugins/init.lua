hl.exec_cmd("hyprpm reload")
hl.permission("/usr/bin/hyprpm", "plugin", "allow")

require("stuff.plugins.scrolloverview")
require("stuff.plugins.snappy-switcher")
