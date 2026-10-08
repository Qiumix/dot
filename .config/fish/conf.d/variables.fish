set -g fish_greeting ""
set -x TPM_HOME /usr/share/tmux-plugin-manager
set -x TMUX_CONFIG "$HOME/.config/tmux/tmux.conf"
set -x JAVA_HOME /usr/lib/jvm/default
set -x STARSHIP_CONFIG $HOME/.config/starship/starship.toml
set -x CARGO_HOME $HOME/.cargo
set -x STEEL_LSP_HOME $HOME/.config/steel/
set -x fish_key_bindings fish_vi_key_bindings
set -x EDITOR nvim
set -x MANPAGER "nvim +Man! -"
set -x ANDROID_HOME /opt/android-sdk
set -x ANDROID_SDK_ROOT /opt/android-sdk

set -x LS_ICONS "*.kdl="

#--------------------------------------------------
# RESPECT XDG BASE DIRECTORIES
#--------------------------------------------------
# NOTE: Most XDG variables are now set in ~/.config/environment.d/*.conf
# These are loaded by systemd user session and available to all processes.
# We keep fallbacks here for non-systemd environments or if variables aren't set.

set -q XDG_CONFIG_HOME; or set -xg XDG_CONFIG_HOME $HOME/.config
set -q XDG_DATA_HOME; or set -xg XDG_DATA_HOME $HOME/.local/share
set -q XDG_CACHE_HOME; or set -xg XDG_CACHE_HOME $HOME/.cache
set -q XDG_STATE_HOME; or set -xg XDG_STATE_HOME $HOME/.local/state
set -q XDG_BIN_HOME; or set -xg XDG_BIN_HOME $HOME/.local/bin
set -q XDG_RUNTIME_DIR; or set -xg XDG_RUNTIME_DIR /run/user/$(id -u)
