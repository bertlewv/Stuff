#!/bin/sh
mv ~/backups/* ~/backups/archive/ 2> /dev/null

./mysqldump.sh $1 $2 finalmile
./mysqldump.sh $1 $2 infinitewp
./mysqldump.sh $1 $2 masonrid_user
./mysqldump.sh $1 $2 mjgrill
./mysqldump.sh $1 $2 mjsaloon
./mysqldump.sh $1 $2 nagios
./mysqldump.sh $1 $2 short
./mysqldump.sh $1 $2 steel
./mysqldump.sh $1 $2 warriors_user
./mysqldump.sh $1 $2 westover_user
./mysqldump.sh $1 $2 wordpress
./mysqldump.sh $1 $2 wp_band
