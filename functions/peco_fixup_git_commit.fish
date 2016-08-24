function peco_fixup_git_commit
    git log --oneline --decorate --no-color | peco | awk '{print $1}' | read -l hash

    if [ $hash ]
        commandline "git commit --fixup $hash"
        commandline -f execute
    else
        commandline ''
    end
end
