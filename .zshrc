# Alias for "history | grep <string>"
hg() {
  history | grep "$@"
}

# Added for 'fast node manager'
eval "$(fnm env)"

# Added by Windsurf
export PATH="/Users/apple/.codeium/windsurf/bin:$PATH"

# Load Git branch detection
autoload -Uz vcs_info
precmd() { vcs_info }

# Format Git branch output
zstyle ':vcs_info:git:*' formats '%b'

# Enable prompt substitution for color codes
setopt PROMPT_SUBST

# Set your prompt:
# - %F{red}...%f : red text
# - %F{green}...%f : green text
# - %~ : current directory (with ~ for home)
PROMPT='%F{red}%~%f %F{green}${vcs_info_msg_0_}%f $ '
