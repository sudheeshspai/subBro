#!/bin/bash
#1. user wii enter the domain name
#2. the script will fetch the subdomains of the domain in jason format
#3. the script will parse the jason file and the subdomains(subdomain.txt) in a file
#defining the and output file
read -p "SubBro here (^_^)Enter the domain name: " domain
output="subdomain.txt"
#fetching the subdomains
curl -s "https://crt.sh/?q=%.$domain" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u > $output
echo "The subdomains are saved in $output (^_^) happy hacking"