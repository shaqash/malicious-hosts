#!/bin/bash
cd $(mktemp -d)
pwd

if [ ! -f /etc/hosts.bak ]; then
    	echo "Backup of hosts not found. Creating backup.."
	sudo -S cp /etc/hosts /etc/hosts.bak
fi

wget -O hosts.new https://someonewhocares.org/hosts/hosts
cat /etc/hosts.bak hosts.new > hosts

if ! diff -q hosts /etc/hosts &>/dev/null; then
	>&2 echo "The new file differs from your own."
	read -p "Overwrite current hosts? (y/n)?" choice
	case "$choice" in 
  		y|Y) sudo -S cp hosts /etc/hosts;;
  		n|N) echo "Operation cancelled by user.";;
  		*) echo "invalid";;
	esac
fi

