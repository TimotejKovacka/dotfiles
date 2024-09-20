alias ga='git add'
alias gaa='git add --all'
alias gac='git add -A && git commit -m'
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gpf='git push --force-with-lease --force-if-includes'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gc='git commit --verbose'
alias gcf="git commit --fixup"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gs='git status -sb'
alias gswc='gswc = git switch --create'

# More fun with git

alias gb='git branch --sort=-committerdate | fzf --header Checkout | xargs git checkout'
alias gcleanup="git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
