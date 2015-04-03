#!/bin/sh

cd /minecraft
exec /sbin/setuser minecraft java -Xmx1024M -Xms1024M -jar minecraft_server.jar 2>&1 | logger
