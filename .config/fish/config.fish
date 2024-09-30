if status is-interactive
    # Commands to run in interactive sessions can go here
end
kubectl completion fish | source


# https://sw.kovidgoyal.net/kitty/kittens/ssh/
alias s="kitten ssh"
# alias stunnel="s -N -R '30001:localhost:3000' thus@tunnel.arul.no"
alias gpsup="git sup"


alias vyvpn="asdf shell java adoptopenjdk-15.0.2+7 && java -jar ~/Library/Check\ Point/Mobile\ Access/CShell.jar"
# Hooks


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/miniconda3/bin/conda
    eval /opt/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
        . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /opt/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<

# Stuff for gcloud components
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

# Sets JAVA_HOME using asdf
. ~/.asdf/plugins/java/set-java-home.fish
