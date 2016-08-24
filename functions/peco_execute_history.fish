function peco_execute_history
    if test (count $argv) = 0
        set peco_flags ''
    else
        set peco_flags --query "$argv"
    end

    history | peco $peco_flags | read -l line

    if [ $line ]
        commandline "$line"
        commandline -f execute
    else
        commandline ''
    end
end
