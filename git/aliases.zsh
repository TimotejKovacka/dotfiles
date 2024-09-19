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

# My fun aliases

gitrebase() {
  local base_branches=("master" "main" "development")
  local base_branch=""

  # Check if an argument was provided
  if [ $# -eq 0 ]; then
    echo "Please provide a base branch (master, main, or development):"
    select choice in "${base_branches[@]}"; do
      if [[ " ${base_branches[*]} " =~ " ${choice} " ]]; then
        base_branch=$choice
        break
      else
        echo "Invalid selection. Please try again."
      fi
    done
  else
    # Check if the provided argument is valid
    if [[ " ${base_branches[*]} " =~ " $1 " ]]; then
      base_branch=$1
    else
      echo "Error: Invalid base branch. Please use master, main, or development."
      return 1
    fi
  fi

  current_branch=$(git symbolic-ref --short HEAD)
  if [ "$current_branch" = "$base_branch" ]; then
    echo "Error: You are currently on the $base_branch branch. Exiting."
    return 1
  fi

  branch_name=${2:-$current_branch}
  git checkout "$base_branch" && \
  git fetch --prune --all && \
  git pull --rebase=true origin --prune && \
  git checkout "$branch_name" && \
  git rebase refs/heads/"$base_branch" && \
  git push origin refs/heads/"$branch_name" --force-with-lease --force-if-includes && \
  git checkout "$branch_name"
}
alias grb="gitrebase"