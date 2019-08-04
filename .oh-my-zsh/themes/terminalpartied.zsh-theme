PROMPT='%(?,%{$fg[green]%},%{$fg[red]%}) '
RPS1='%{$fg_bold[black]%}%2~/$(git_prompt_info)%{$reset_color%}'
#RPS1='%{$fg[white]%}%2~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%}'
#RPROMPT='%{$fg_bold[black]%}%2~$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}  "