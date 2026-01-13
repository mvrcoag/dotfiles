# ==========================================
# ROSÉ PINE ZSH PROMPT (LEFT SIDE)
# ==========================================

# 1. Load Version Control capability
autoload -Uz vcs_info
precmd() { vcs_info }

# 2. Configure Git Style
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats ' %F{#ebbcba} %b%f' # Rose (Pink) for branch
zstyle ':vcs_info:git*' actionformats ' %F{#ebbcba} %b|%a%f'

# 3. Helper to check for dirty git status (modified files)
parse_git_dirty() {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    echo "%F{#f6c177} !%f" # Gold (Yellow) exclamation if dirty
  else
    echo ""
  fi
}

# 4. Define Rosé Pine Colors (Hex)
# Iris (Purple): #c4a7e7
# Foam (Cyan):   #9ccfd8
# Love (Red):    #eb6f92

# 5. Build the Prompt
setopt PROMPT_SUBST

# Structure: [User (Purple)] in [Path (Cyan)] on [Git Branch (Pink)][Status (Gold)] ->
PROMPT='%B%F{#c4a7e7}%n%f%b in %B%F{#9ccfd8}%~%f%b${vcs_info_msg_0_}$(parse_git_dirty)
%F{#eb6f92}➜%f '

export PATH="/opt/homebrew/opt/node@24/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ask="gemini -p"
alias vim="nvim"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m $1"
alias gl="git log --graph"
