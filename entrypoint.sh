#!/bin/sh

/container/user-setup.sh

chown $C_USER:$C_USER -R /home/vimdeck
exec su-exec $C_USER:$C_USER "$@"
