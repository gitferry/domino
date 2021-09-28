addkey(){
    expect <<EOF
        set timeout 60
        spawn ssh-copy-id $2@$1
        expect {
            "yes/no" {send "yes\r";exp_continue }
            "password:" {send "$3\r";exp_continue }
            eof
        }
EOF
}

add_ssh_key(){
    SERVER_ADDR=(`cat remote.config | awk '{ print $2 }'`)
    echo "Add your local ssh public key into all nodes"
    for (( j=1; j<=$1; j++ ))
    do
            addkey ${SERVER_ADDR[j-1]} $2 $3
	    wait
    done
}

USERNAME="root"
PASSWD="Guangren0926"
MAXPEERNUM=(`wc -l remote.config | awk '{ print $1 }'`)

add_ssh_key $MAXPEERNUM $USERNAME $PASSWD
