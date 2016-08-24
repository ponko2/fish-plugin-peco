function peco_cd_ghq_repository
    ghq list --full-path | peco | read -l path

    if [ $path ]
        commandline "cd $path"
        commandline -f execute
    else
        commandline ''
    end
end
