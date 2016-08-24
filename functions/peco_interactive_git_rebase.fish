function peco_interactive_git_rebase
    git log --oneline --decorate --no-color | peco | awk '{print $1 "^"}' | read -l hash

    if [ $hash ]
        commandline "git rebase -i $hash"
        commandline -f execute
    else
        commandline ''
    end
end
