# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kolo"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  gitignore
  gitfast
  colored-man-pages
  z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias nah='git checkout .'
alias undo='git reset --hard HEAD^'
alias gs='git status'
alias ga='git add'
alias gap='git add -p'
alias gc='git commit -vm'
alias gx='git checkout'

# alias profile="code -a ~/.zshrc"

# System
mkcd() { mkdir -- "$1" && cd -- "$1";}
alias reload="exec zsh"
alias grep='grep --color'
alias cp='cp -v'
alias mv='mv -iv'
alias ll="pwd && ls -FGlAhp"
export BAT_THEME='Dracula'
alias cat='bat --paging=never'

# NPM
alias scripts='cat package.json | jq .scripts'
alias vite='npm create vite@latest'
alias dev='npm run dev'
# alias evilchrome='Chrome\ Apps.localized --disable-web-security --user-data-dir=“~/testUser”'

# Pico8
alias picoman='code /Applications/pico-8/pico-8_manual.txt'
alias picoshort='open /Applications/pico-8/PICO-8_CheatSheet_0111Gm_4k.png'

alias tree='tree -C -I node_modules'
# ${1:-2} is "Use first arg or default to 2"
function twig() { tree -L ${1:-2};}

# include Z, yo
. ~/.oh-my-zsh/plugins/z/z.sh

export PUMADEV_SOURCE_ENV=0
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(rbenv init - bash)"
eval "$(nodenv init -)"

# Add Devkick control
export PATH=/Users/chrisimpicciche/Ink/devkick-control/cli:$PATH
export AWS_PROFILE=ci-dev-echoexport
PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init --path)"
fi

# bun completions
# [ -s "/Users/chrisimpicciche/.bun/_bun" ] && source "/Users/chrisimpicciche/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"q
export PATH="$BUN_INSTALL/bin:$PATH"

# fancy diffs
# export PATH="/Users/chrisimpicciche/Applications/diff-so-fancy:$PATH"
