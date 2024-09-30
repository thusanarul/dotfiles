function stunnel
    set -l forward_hostname $argv[1]
    set -l port $argv[2]
    s -N -R 30001:$forward_hostname:$port thus@tunnel.arul.no
end
