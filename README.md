# subBro

## This script fetches subdomains for a given domain using the `crt.sh` service and saves the results to a file.

## Prerequisites

- `curl`: Command-line tool for transferring data.
- `jq`: Command-line JSON processor.
- `sed`: Stream editor for filtering and transforming text.
- `sort`: Command-line utility for sorting lines of text.

## Usage

1. Clone the repository or download the script.
2. Make the script executable:
   ```bash
   chmod +x subBro.sh

## How It Works
1. The script prompts the user to enter a domain name.
2. It fetches the subdomains of the entered domain in JSON format from crt.sh.
3. The script parses the JSON response to extract subdomain names.
4. It removes any wildcard prefixes (e.g., *.example.com becomes example.com).
5. The results are sorted and duplicates are removed.
6. The final list of subdomains is saved to subdomain.txt.

## Example
### Explanation of Commands
curl -s "https://crt.sh/?q=%.$domain": Fetches the subdomains in JSON format.  

jq -r '.[].name_value': Extracts the name_value field from each JSON object.

sed 's/\*\.//g': Removes any leading *. (wildcard subdomains).

sort -u: Sorts the results and removes duplicates.

Output
The subdomains are saved in a file named subdomain.txt.                                        
  
  
