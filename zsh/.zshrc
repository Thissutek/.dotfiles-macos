source <(fzf --zsh)
# Enhanced CLI Tools Aliases
alias ls="eza --icons --git"
alias ll="eza -la --icons --git"
alias tree="eza --tree --icons"
alias cat="bat"
alias find="fd"
alias diff="delta"

# Python aliases
alias python='python3'
alias py='python3'
alias pip='pip3'
eval "$(starship init zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
export ANDROID_HOME=$HOME/Library/Android/sdk && 
export PATH=$PATH:$ANDROID_HOME/emulator &&
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export PATH=$PATH:/Users/jonathanyau/.spicetify

# Smart Functions
mkcd() { mkdir -p "$1" && cd "$1" }
extract() {
  case $1 in
    *.tar.gz) tar -xzf $1 ;;
    *.zip) unzip $1 ;;
    *.7z) 7z x $1 ;;
    *.tar) tar -xf $1 ;;
    *.tar.bz2) tar -xjf $1 ;;
    *.rar) unrar x $1 ;;
    *) echo "Unsupported format" ;;
  esac
}

# Commands for SSH 
alias sendtowin="scp -r ~/ToWindows/* jonathan@192.168.2.81:~/Desktop/macOS/"
alias getfromwin="scp \"jonathan@192.168.2.81:~/Desktop/macOS/*\" ~/FromWindows/"
alias winbox="ssh jonathan@192.168.2.81"
