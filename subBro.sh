#!/bin/bash
read -p "SubBro here (^_^)Enter the domain name: " domain
read -p "enter the file name to save the subdomains of $domain :" output                    
curl -s "https://crt.sh/json?q=$domain" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u > $output
echo "The subdomains are saved in $output (^_^) happy hacking"
