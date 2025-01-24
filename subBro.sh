#!/bin/bash\                    
read -p "SubBro here (^_^)Enter the domain name: " domain
output="subdomain.txt"
curl -s "https://crt.sh/?q=%.$domain" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u > $output
echo "The subdomains are saved in $output (^_^) happy hacking"
