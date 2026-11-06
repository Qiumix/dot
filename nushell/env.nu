# env.nu
#
# Nushell environment, migrated from ~/.config/fish (fish 4.9.3).
# Loaded before config.nu; environment variables only. Line-editor settings,
# abbreviations, keybindings and custom commands live in config.nu and
# autoload/. See https://www.nushell.sh/book/configuration.html

# ---------------------------------------------------------------------------
# XDG base directories
# ---------------------------------------------------------------------------
# The authoritative values come from ~/.config/environment.d/*.conf, which the
# systemd user session exports to every process. These assignments are the
# fallbacks for environments without systemd (fish: conf.d/variables.fish).
$env.XDG_CONFIG_HOME = ($env.XDG_CONFIG_HOME? | default ($nu.home-dir | path join ".config"))
$env.XDG_DATA_HOME = ($env.XDG_DATA_HOME? | default ($nu.home-dir | path join ".local" "share"))
$env.XDG_CACHE_HOME = ($env.XDG_CACHE_HOME? | default ($nu.home-dir | path join ".cache"))
$env.XDG_STATE_HOME = ($env.XDG_STATE_HOME? | default ($nu.home-dir | path join ".local" "state"))
$env.XDG_BIN_HOME = ($env.XDG_BIN_HOME? | default ($nu.home-dir | path join ".local" "bin"))
$env.XDG_RUNTIME_DIR = ($env.XDG_RUNTIME_DIR? | default $"/run/user/(^id -u | str trim)")

# ---------------------------------------------------------------------------
# Toolchain, editor and misc environment variables
# ---------------------------------------------------------------------------
$env.TPM_HOME = "/usr/share/tmux-plugin-manager"
$env.TMUX_CONFIG = ($nu.home-dir | path join ".config" "tmux" "tmux.conf")
$env.JAVA_HOME = "/usr/lib/jvm/default"
$env.STARSHIP_CONFIG = ($nu.home-dir | path join ".config" "starship" "starship.toml")
$env.CARGO_HOME = ($nu.home-dir | path join ".cargo")
$env.STEEL_LSP_HOME = ($nu.home-dir | path join ".config" "steel")
$env.EDITOR = "nvim"
$env.MANPAGER = "nvim +Man! -"
$env.ANDROID_HOME = "/opt/android-sdk"
$env.ANDROID_SDK_ROOT = "/opt/android-sdk"
$env.PNPM_HOME = ($nu.home-dir | path join ".local" "share" "pnpm")

$env.CUDA_HOME = "/opt/cuda"
$env.LIBTORCH_CXX11_ABI = "1"

# Additional icons for ls-like tools: Nerd Font glyph U+EAC4 for KDL files
# (fish: conf.d/variables.fish).
$env.LS_ICONS = "*.kdl=" + (char -u eac4)

# ---------------------------------------------------------------------------
# PATH
# ---------------------------------------------------------------------------
# fish prepended these via fish_add_path (conf.d/path.fish, conf.d/pnpm.fish)
# plus the universal fish_user_paths list. Regrouped so that user-controlled
# directories keep precedence over system-wide ones.
use std/util "path add"
path add [
    ($env.XDG_BIN_HOME)
    ($nu.home-dir | path join ".local" "sbin")
    ($nu.home-dir | path join ".cargo" "bin")
    ($nu.home-dir | path join ".roswell" "bin")
    ($nu.home-dir | path join ".npm-global" "bin")
    ($nu.home-dir | path join ".npm-global")
    ($nu.home-dir | path join "go" "bin")
    ($env.XDG_DATA_HOME | path join "npm" "bin")
    ($env.PNPM_HOME)
    ($env.PNPM_HOME | path join "bin")
    ($nu.home-dir | path join "pj" "myPj" "esp")
    ($nu.home-dir | path join "pj" "pubpj" "kd" "build")
    ($nu.home-dir | path join "fvm" "default" "bin")
    "/opt/cuda/bin"
    "/opt/android-sdk/tools/bin"
]
