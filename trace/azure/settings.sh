#Remote settings
username="root"
identity=""
remote_setup="source /root/.profile"
remote_exec_path="/root"
remote_log_dir="/root"
##Maps from datancenter IDs to server ips. 
##A server's public ip may be different from the one used in the program.
remote_location_file="remote.config"

#Program parameters
is_debug_mode="false"
config_file="exp.config"
location_file="location.config"

#Server binary
server_app="server"
#Relative path to $GOPATH/src
server_app_path="domino/trace"

#Client binary
client_app="client"
#Relative path to $GOPATH/src
client_app_path="domino/trace"

#Log collection local directory
local_log_dir="./log"
