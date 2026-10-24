require("starship"):setup()
require("full-border"):setup()
require("sduf"):setup()
require("duckdb"):setup()

require("zoxide"):setup({ update_db = true })
require("git"):setup({ order = 1500 })

require("gridview"):setup({
  swayimg = "swayimg.gallery.thumb_size = 350",
})
require("repo-status"):setup()
require("fr"):setup({ rga = "--no-ignore-vcs" })
