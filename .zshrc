if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

export ZSH="$HOME/.oh-my-zsh"
export LANG=pt_BR.UTF-8
ZSH_THEME="spaceship"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto
ENABLE_CORRECTION="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

spaceship add dir
spaceship add git
