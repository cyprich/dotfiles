# welcome screen
if status is-interactive
  function fish_greeting
    if type -q fastfetch
      fastfetch
    end
  end
end

# starship prompt
starship init fish | source 

# nvim as default editor 
set -Ux EDITOR nvim
set -gx EDITOR nvim

set -Ux VISUAL nvim
set -gx VISUAL nvim

# aliases 
alias ls='eza'
alias ll='eza -l --time-style=long-iso'
alias lla='eza -la --time-style=long-iso'
alias llr='eza -laR --time-style=long-iso'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gp='git push'

alias ip='ip -c'

alias python='python3'
alias py='python3'

alias please='sudo'
alias pls='sudo'

alias cat='bat --style=plain'
