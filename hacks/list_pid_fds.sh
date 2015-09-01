ls /proc/*/fd -l | awk ' /[0-9]+\/fd:/ {PREFIX = $1} { print PREFIX ":" $0}'
