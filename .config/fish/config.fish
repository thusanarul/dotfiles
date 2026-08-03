if status is-interactive
    # Commands to run in interactive sessions can go here
end


# https://sw.kovidgoyal.net/kitty/kittens/ssh/
alias ks="kitten ssh"
# alias stunnel="s -N -R '30001:localhost:3000' thus@tunnel.arul.no"
alias gpsup="git sup"

# oddmunds handy abbr
abbr --set-cursor='%' -- config '$EDITOR ~/.config/%'

# lazygit
abbr lg lazygit

# lazy list al
abbr ll ls -al

# rustrover
abbr rustrover open -na "RustRover.app" --args nosplash

# global env variables
set -gx EDITOR vim
set -gx XDG_CONFIG_HOME "$HOME/.config"

# Activates vi mode bindings for fish and rebinds ctrl+c to clear input line
# https://fishshell.com/docs/current/cmds/bind.html#examples
# https://fishshell.com/docs/current/cmds/fish_vi_key_bindings.html
# NOTE: any unmatched bindings sends an escape sequence (which will switch from insert to default/command mode): https://github.com/fish-shell/fish-shell/issues/3739#issuecomment-272902998
set -g fish_key_bindings fish_vi_key_bindings

# todo: figure out if this is cmd+k
bind -M insert \cc kill-whole-line repaint

# option+backspace deletes backward word
bind -M insert \e\x7F backward-kill-word


mise activate fish | source
zoxide init fish | source

# direnv hook needs to be at the end of file 
# https://direnv.net/docs/hook.html#fish
direnv hook fish | source
export PATH="$HOME/.local/bin:$PATH"
