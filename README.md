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

## Solution
![Result of Nginx Log Analyser](https://private-user-images.githubusercontent.com/148189997/463626142-c4bff0bb-604c-4440-8abb-e35e25a263c5.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTE5NjkwNjQsIm5iZiI6MTc1MTk2ODc2NCwicGF0aCI6Ii8xNDgxODk5OTcvNDYzNjI2MTQyLWM0YmZmMGJiLTYwNGMtNDQ0MC04YWJiLWUzNWUyNWEyNjNjNS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNzA4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDcwOFQwOTU5MjRaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lYjNhY2VlMjVhZGE2ZTUyM2VlZTE0OTg4ZDA3YWY1MWYwMDlkM2IxMzMyN2UwMTc2YmEyYjdiOTlhNThjNTI1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.4CY0M2TIMaNzkJ-URQ2U5ZBYPvx0ZOdxp3DTzkC9Vag)

## References
[1] [Bash Tutorial](https://www.w3schools.com/bash/index.php)

[2] [Looping through the content of a file in Bash](https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash)
