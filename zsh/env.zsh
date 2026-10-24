export TPM_HOME=/usr/share/tmux-plugin-manager
export TMUX_CONFIG="$HOME/.config/tmux/tmux.conf"
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export CARGO_HOME="$HOME/.cargo"
export STEEL_LSP_HOME="$HOME/.config/steel/"
export fish_key_bindings=fish_vi_key_bindings
export EDITOR=nvim
export MANPAGER="nvim +Man! -"

if [ -z "${XDG_CONFIG_HOME}" ]; then export XDG_CONFIG_HOME="$HOME/.config"; fi
if [ -z "${XDG_DATA_HOME}" ]; then export XDG_DATA_HOME="$HOME/.local/share"; fi
if [ -z "${XDG_CACHE_HOME}" ]; then export XDG_CACHE_HOME="$HOME/.cache"; fi
if [ -z "${XDG_STATE_HOME}" ]; then export XDG_STATE_HOME="$HOME/.local/state"; fi
if [ -z "${XDG_BIN_HOME}" ]; then export XDG_BIN_HOME="$HOME/.local/bin"; fi

if [ -z "${XDG_RUNTIME_DIR}" ]; then export XDG_RUNTIME_DIR="/run/user/$(id -u)"; fi

export PATH="$HOME/.local/bin:$HOME/.local/sbin:$HOME/.cargo/bin:$HOME/.roswell/bin:$HOME/.npm-global/bin:$HOME/go/bin:$XDG_DATA_HOME/npm/bin:$HOME/.local/share/pnpm/bin:$PATH"
