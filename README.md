# Nginx-log-analyzer
This is a simple bash script to analyze Nginx file [log-file.txt](https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log) and generate the following statistics:
* Top 5 IP addresses with the most requests
* Top 5 most requested paths
* Top 5 response status codes
* Top 5 user agents

## Requirements
* Bash shell (MacOS, Linux or WSL on Windows)
* Standard Unix tools ```awk, sort, uniq, head, tail, read ```

##Installations
* Download the log file here [log-file.txt](https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log) 
* Create the script ```analyzer-log.sh ```
* Make the script executable and run it
```bash
chmod +x aanlyzer-log.sh

./analyzer-log.sh
```

## Output
The output looks like this:
```
Welcome to Nginx log analyzer
=========================================
Top 5 IP addresses with the most requests
=========================================
192.168.1.100   : 1523 requests
10.0.0.45       : 892 requests
172.16.0.23     : 654 requests

===========================
Top 5 most requested paths
===========================
/index.html                    : 2341 requests
/api/users                     : 1876 requests
/static/css/style.css          : 1234 requests
```

