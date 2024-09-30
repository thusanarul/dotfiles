function compare_files
    set -l a $argv[1]
    set -l b $argv[2]

    vimdiff (cat $a | psub) (cat $b | psub)
end
