#!/bin/bash

REMOTE_HOST=`sed -n -e 's/^\REMOTE_HOST\s*=\s*//p' .env`
LOCAL_HOST=`sed -n -e 's/^\LOCAL_HOST\s*=\s*//p' .env`

sed -i "s,REMOTE_HOST,$REMOTE_HOST,g" nginx.conf 
sed -i "s,LOCAL_HOST,$LOCAL_HOST,g" nginx.conf 

echo $REMOTE_HOST
echo $LOCAL_HOST
