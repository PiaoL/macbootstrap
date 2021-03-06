# Find file using regex
function bsfn() {
    # Use -or to support multi types
    find . \( -type f -or -type l \) | egrep --color=always $1
}

# Download youtube video to ~/Movies/Youtube
function yd() {
    if [[ ! -e /usr/local/bin/youtube-dl ]]; then
        brew install youtube-dl
    fi
    youtube-dl -q --proxy socks5://127.0.0.1:7891/ --console-title $1 -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 -o '~/Movies/Youtube/%(title)s.%(ext)s' &
}

# Make ctags in current directory
function objctags() {
    ctags --exclude='.git' --exclude='*.js' \
        --langmap=objc:.m.h \
        --totals=yes \
        --tag-relative=yes \
        --regex-objc='/^[[:space:]]*[-+][[:space:]]*\([[:alpha:]]+[[:space:]]*\*?\)[[:space:]]*([[:alnum:]]+):[[:space:]]*\(/\1/m,method/' \
        --regex-objc='/^[[:space:]]*[-+][[:space:]]*\([[:alpha:]]+[[:space:]]*\*?\)[[:space:]]*([[:alnum:]]+)[[:space:]]*\{/\1/m,method/' \
        --regex-objc='/^[[:space:]]*[-+][[:space:]]*\([[:alpha:]]+[[:space:]]*\*?\)[[:space:]]*([[:alnum:]]+)[[:space:]]*\;/\1/m,method/' \
        --regex-objc='/^[[:space:]]*\@property[[:space:]]+.*[[:space:]]+\*?(.*);$/\1/p,property/' \
        --regex-objc='/^[[:space:]]*\@implementation[[:space:]]+(.*)$/\1/c,class/' \
        --regex-objc='/^[[:space:]]*\@interface[[:space:]]+(.*)[[:space:]]+:.*{/\1/i,interface/' -R . &>/dev/null
}

function dsp() {
    sudo cp -R $1 '/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport'
}

export HOMEBREW_NO_AUTO_UPDATE=true
# source ~/.bash_profile

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Virtualenv/VirtualenvWrapper
# source /usr/local/bin/virtualenvwrapper.sh

alias m='mkdir'
alias pi='pod install'
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias mcd="'/Applications/MacDown.app/Contents/SharedSupport/bin/macdown'"
alias zshconfig="subl ~/.macbootstrap/zsh-config/personalized.sh"
alias rnb="react-native bundle --platform ios --entry-file index.js --bundle-output ios/bundle/main.jsbundle --assets-dest ios/bundle --dev false"
alias codep="code-push"
alias cdmj='cd ~/MyProject/majia'
alias pt='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891'
alias dpt='unset http_proxy https_proxy all_proxy'
alias adgi='cp ~/MyProject/majia/jianzhi/.gitignore .gitignore'
alias oapd="subl ~/MyProject/majia/shunck/appdata.sh"
alias shapd="sh ~/MyProject/majia/shunck/appdata.sh"
alias fix='sudo xattr -rd com.apple.quarantine '
