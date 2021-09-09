function prompt_char {
        if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%{$fg_bold[white]%}[%(!.%{$fg[red]%}.%{$fg[green]%}%n@)%m %{$fg_bold[cyan]%}%(!.%1~.%~)%{$fg_bold[white]%}]$(git_prompt_info)%{$fg_bold[magenta]%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
