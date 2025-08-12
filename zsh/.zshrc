source <(fzf --zsh)
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

# Commands for SSH 
alias sendtowin="scp -r ~/ToWindows/* jonathan@192.168.2.81:~/Desktop/macOS/"
alias getfromwin="scp \"jonathan@192.168.2.81:~/Desktop/macOS/*\" ~/FromWindows/"
alias winbox="ssh jonathan@192.168.2.81"
