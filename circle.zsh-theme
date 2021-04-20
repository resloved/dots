PROMPT='%{$fg[white]%}$USER%(?,%{$fg[green]%},%{$fg[red]%}) ● %{$reset_color%}'
RPROMPT='%{$fg[blue]%}%2~ %{$fg[white]%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ●"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ●"
