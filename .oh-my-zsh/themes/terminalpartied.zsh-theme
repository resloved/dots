PROMPT='%(?,%{$fg[green]%},%{$fg[red]%}) %% '
RPROMPT='%{$fg[white]%}%2~$(git_prompt_info) %{$fg_bold[blue]%}[%T]% $(battery_pct_prompt)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$fg[yellow]%}"
