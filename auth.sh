#!/bin/sh
#

USER=$@

# try jasminek
PASS=`echo "select pass_md5 from auth_user u join player_player p on p.id = u.id where username = '$USER'" | psql -t longturn longturn | head -n 1`
PASS=`echo $PASS`
echo $PASS