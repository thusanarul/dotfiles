function init_hops_db_proxy
    set -l port $argv[1]

    set -l logged_in_account (gcloud config list account --format "value(core.account)" | string trim)

    if test -z $logged_in_account
        echo "Logging in..."
        gcloud auth application-default login
    end

    echo "Logged in with account: $logged_in_account"
    
    cloud-sql-proxy app-iterate:europe-west1:app-iterate --port $port 
end
