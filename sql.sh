#!/bin/bash
export  PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
DIR="test"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  echo "${DIR} Present"
  cd $DIR
  git pull https://github.com/palashkhamrai/$DIR.git

else 
  echo "Directory $DIR Not Present"
  git clone https://github.com/palashkhamrai/$DIR.git
  cd $DIR
fi

echo "999999999999"

mysql -N -uadmin -padmin123 -h database-1.cqbs7fl444da.us-east-1.rds.amazonaws.com mysqlserver -e "show databases"
