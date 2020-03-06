# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="simple"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# Prompt
#
# 1. Current working directory
# 2. Git info
# 3. Display '#' if sudo, otherwise '$'
#
#             1                   2                      3
#       ┏━━━━━┻━━━━┓ ┏━━━━━━━━━━━━┻━━━━━━━━━━━┓ ┏━━━━━━━━┻━━━━━━━┓
PROMPT='%F{yellow}%~ %F{cyan}$(git_prompt_info) %F{yellow}%(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

# oh-my-zsh configures LESS in a way that interferes with how I want git
# operations to work.
unset LESS
