# malicious-hosts
Keep your hosts file updated using Dan Pollock's hosts file.  
#### What is the HOSTS file?
"hosts is an operating system file that maps host to IP addresses." more at [Wikipedia](https://en.wikipedia.org/wiki/Hosts_(file)).  
We'll be using it to block potentially malicious domains.
#### Recognition
Special thanks to Dan Pollock for keeping our hosts file updated and the internet safer to use.  
Visit his web page at https://someonewhocares.org.
#### Warning
This script modifies a system file, thus, requires Super User privileges.  
Please read the contents of the script first, and more importantly the hosts file itself.
You can find it [here](https://someonewhocares.org/hosts/hosts).

## How to use
Download and run using the following commands:
```
git clone https://github.com/shaqash/updated-hosts.git
cd updated-hosts
cd Linux #YOUR OS
chmod +x interactive.sh
sudo ./interactive.sh
```

## How to schedule (Using cron)
**Please read the warning first, and consider if you're willing to automate such task.**  
You can schedule the script to run at a set time using cron.
For that you'll need to use the non-interactive version:
```
git clone https://github.com/shaqash/updated-hosts.git
crontab -e
#Insert the following to schedule for 23:53PM every day.
53 23 * * * /bin/sh $HOME/updated-hosts/Linux/non-interactive.sh
```

### TODO
* Write for Windows
