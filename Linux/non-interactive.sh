#!/bin/bash

# Non interactive version
# Should work well with cron

cd $(mktemp -d)
pwd

if [ ! -f /etc/hosts.bak ]; then
    	echo "Backup of hosts not found. Creating backup.."
	sudo cp /etc/hosts /etc/hosts.bak
fi

wget -O hosts.new https://someonewhocares.org/hosts/hosts
cat /etc/hosts.bak hosts.new > hosts

if ! diff -q hosts /etc/hosts &>/dev/null; then
	>&2 echo "The new file differs from your own."
	sudo cp hosts /etc/hosts;
fi


