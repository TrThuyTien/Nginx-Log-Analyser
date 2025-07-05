# Nginx-Log-Analyser
https://roadmap.sh/projects/nginx-log-analyser

The goal of this project is to help you practice some basic shell scripting skills. You will write a simple tool to analyze logs from the command line.

## Requirements
Download the sample nginx access log file from [here](https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log). 
The log file contains the following fields:

- IP address
- Date and time
- Request method and path
- Response status code
- Response size
- Referrer
- User agent

You are required to create a shell script that reads the log file and provides the following information:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

## References
[1] [Bash Tutorial](https://www.w3schools.com/bash/index.php)

[2] [Looping through the content of a file in Bash](https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash)
