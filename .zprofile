#!/bin/sh

export TERMINAL="foot"
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"

export PATH="$HOME/.local/bin:$PATH"

export SSH_ASKPASS="wayprompt-ssh-askpass"
export SUDO_ASKPASS="wayprompt-ssh-askpass"

export LESS="-R"
export MANPAGER="less -R --use-color -Dd+b -Duc"
export MANROFFOPT="-P -c"
export FZF_DEFAULT_OPTS="--layout=reverse --height=~40%"
export PASSWORD_STORE_GPG_OPTS="--no-throw-keyids"
export NIX_REMTOE="daemon"
export GTK_THEME="Arc-Dark"
export QT_STYLE_OVERRIDE="kvantum"
export QT_QPA_PLATFORMTHEME="gtk2"

# run river
export SDL_VIDEODRIVER="wayland"
export CLUTTER_BACKEND="wayland"
export QT_QTA_PLATFORM="wayland"
export MOZ_ENABLE_WAYLAND=1
export NO_AT_BRIDGE=1
export _JAVA_AWT_WM_NOREPARENTING=1
export AWT_TOOLKIT="MToolkit wmname LG3D"

export XDG_SESSION_TYPE="wayland"
export XDG_SESSION_DESKTOP="river"
export XDG_CURRENT_DESKTOP="river"

[ -z "$WAYLAND_DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && 
	exec dbus-run-session river -log-level debug >"/tmp/river-$(date "+%F-%T").log" 2>&1
