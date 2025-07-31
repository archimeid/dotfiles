source $ZDOTDIR/.zsh_keybindings
source $ZDOTDIR/.zsh_aliases

export PATH="$PATH:$HOME/bin"

# Initialize Homebrew
export HOMEBREW_CASK_OPTS="--appdir=${HOME}/Applications --fontdir=${HOME}/Library/Fonts --no-binaries"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_PREFIX="${HOME}/.homebrew"
export PATH="${HOME}/.homebrew/bin:${PATH}"
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

# Kubernetes
# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

for plugin in $ZDOTDIR/plugins/*.plugin.zsh; do
    source "$plugin"
done

# Initialize NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Autocompletions
#eval "$(uv generate-shell-completion zsh)"
#eval "$(uvx --generate-shell-completion zsh)"
#eval "$(docker completion zsh)"
#eval "$(colima completion zsh)"

# Source extra config if it exists
if [[ -f "$ZDOTDIR/.zsh_extra_config" ]]; then
  source "$ZDOTDIR/.zsh_extra_config"
fi

# Initialize Zellij Terminal Workspace
export ZELLIJ_AUTO_EXIT=true
eval "$(zellij setup --generate-auto-start zsh)"

# Initialize Zoxide (smarter cd command)
eval "$(zoxide init zsh)"

# Initialize Atuin Shell History
eval "$(atuin init zsh)"

# Initialize Starship Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

