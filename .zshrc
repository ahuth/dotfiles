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
# ==================

# oh-my-zsh configures LESS in a way that interferes with how I want git
# operations to work.
unset LESS

# Theme
# =====

# Load the vcs_info plugin.
# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
autoload -Uz vcs_info

# Enable the vcs_info's git integration
zstyle ':vcs_info:*' enable git
precmd() { vcs_info }
setopt prompt_subst

# Show un-commited changes in the prompt. Checking this could be expensive.
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'

# vcs prompt for "special actions", such as rebase or merge.
zstyle ':vcs_info:git*' actionformats " (%b|%a%u%c)"
# vcs prompt for non-special-action scenarios... which is most of the time.
zstyle ':vcs_info:git*' formats " (%b %u%c)"

# Configure the prompt.
#
# 1. %~ is the current working directory, with "~" substituted for the home directory.
# 2. vcs_info_msg_0_ is the git info, and the "// )/)" replaces any occurances of " )" with ")".
# 3. %(!.#.$) conditionally shows a "#" when sudo, and "$" otherwise.
#
#                 1                    2                          3
#                 ┣┓        ┏━━━━━━━━━━┻━━━━━━━━━━━┓           ┏━━┻━━━┓
PROMPT='%F{yellow}%~%F{cyan}${vcs_info_msg_0_// )/)} %F{yellow}%(!.#.$) %{$reset_color%}'
