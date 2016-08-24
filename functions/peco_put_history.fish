function peco_put_history
    if test (count $argv) = 0
        set peco_flags ''
    else
        set peco_flags --query "$argv"
    end

    history | peco $peco_flags | read -l line

    if [ $line ]
        commandline "$line"
    else
        commandline ''
    end
end
