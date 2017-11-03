# with this, as you connect to remote port 2222, you connect to local port 22.
while true ; do 
  ssh -NR 2222:127.0.0.1:22 $user@$ip
sleep 60 ; done

# add
# -----
#GatewayPorts yes
# -----
# to the /etc/ssh/sshd_config on the server side and
# restart sshd.
