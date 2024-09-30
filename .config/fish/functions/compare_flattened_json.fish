function compare_flattened_json
    set -l a $argv[1]
    set -l b $argv[2]


    vimdiff (jq --slurp --sort-keys . $a | psub) (jq --slurp --sort-keys . $b | psub)
end
