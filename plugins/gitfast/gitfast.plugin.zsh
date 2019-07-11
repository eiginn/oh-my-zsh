source "${0:A:h}/git-prompt.sh"

function git_prompt_info() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    dirty="$(parse_git_dirty)"
    __git_ps1 "${ZSH_THEME_GIT_PROMPT_PREFIX//\%/%%}%s${dirty//\%/%%}${ZSH_THEME_GIT_PROMPT_SUFFIX//\%/%%}"
  fi
}
