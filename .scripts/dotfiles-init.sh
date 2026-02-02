#!/usr/bin/env bash
git clone --bare git@github.com:mvrcoag/dotfiles.git $HOME/.dotfiles
# define config alias locally since the dotfiles
# aren't installed on the system yet
function config {
   git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
# create a directory to backup existing dotfiles to
mkdir -p .dotfiles-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out dotfiles from git@github.com:mvrcoag/dotfiles.git";
  else
    echo "Moving existing dotfiles to ~/.dotfiles-backup";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi
# checkout dotfiles from repo
config checkout
config config status.showUntrackedFiles no

declare INSTALL_CMDS=(
    "npm i -g bash-language-server",
    "npm i -g typescript-language-server typescript",
    "npm i -g tailwindcss-language-server",
    "brew install stylua",
    "brew install lua-language-server",
    "brew install font-jetbrains-mono",
)

echo "Running LSP installation commands..."

for cmd in "${INSTALL_CMDS[@]}"; do
    echo "Executing: $cmd"
    eval "$cmd" || echo "Warning: Command failed"
done

echo "Done! Restart your shell or run: source ~/.zsrch"
