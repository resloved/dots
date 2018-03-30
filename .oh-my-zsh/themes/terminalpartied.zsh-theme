PROMPT='%(?,%{$fg[green]%},%{$fg[red]%}) '
RPROMPT='%{$fg[black]%}%2~$(git_prompt_info) %{$fg_bold[white]%}%T% $(battery_pct_prompt)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%} %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✖%{$fg[yellow]%}"
