VIRTUALENV_CHAR="ⓔ "
VIRTUALENV_THEME_PROMPT_PREFIX=""
VIRTUALENV_THEME_PROMPT_SUFFIX=""

SCM_NONE_CHAR=""
SCM_GIT_CHAR="[±] "
SCM_GIT_BEHIND_CHAR="${_omb_prompt_brown}↓${_omb_prompt_normal}"
SCM_GIT_AHEAD_CHAR="${_omb_prompt_bold_green}↑${_omb_prompt_normal}"
SCM_GIT_UNTRACKED_CHAR="⌀"
SCM_GIT_UNSTAGED_CHAR="${_omb_prompt_bold_olive}•${_omb_prompt_normal}"
SCM_GIT_STAGED_CHAR="${_omb_prompt_bold_green}+${_omb_prompt_normal}"

SCM_THEME_PROMPT_DIRTY=""
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

GIT_THEME_PROMPT_DIRTY=" ${_omb_prompt_brown}✗${_omb_prompt_normal}"
GIT_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓${_omb_prompt_normal}"
GIT_THEME_PROMPT_PREFIX=""
GIT_THEME_PROMPT_SUFFIX=""


#ICONS =======================================================================
 
icon_start="┌"
icon_user=" 🛩️  "
icon_host=" 🎯  🖥️  " 
icon_directory=" 🚀 in 📁 🧲 "
icon_branch="🍃"
icon_end="└❯ "


function tabname {
  printf "\e]1;$1\a"
}
function winname {
  printf "\e]2;$1\a"
}

function _omb_theme_PROMPT_COMMAND() {
  PS1="\n${icon_start}$(_omb_prompt_print_python_venv)${icon_user}${_omb_prompt_bold_brown}\u${_omb_prompt_normal}${icon_host}${_omb_prompt_bold_teal}\h${_omb_prompt_normal}${icon_directory}${_omb_prompt_bold_purple}\W${_omb_prompt_normal}\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on ${icon_branch}  \")${_omb_prompt_white}$(scm_prompt_info)${_omb_prompt_normal}\n${icon_end}"
  PS2="${icon_end}"
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
