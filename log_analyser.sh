#!/bin/bash

# File containing the log
LOG_FILE="nginx-access.log"

# Top 5 IPs
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo

# Top 5 paths
echo "Top 5 most requested paths:"
awk '{print $7}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo

# Top 5 status codes
echo "Top 5 response status codes:"
awk '{print $9}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo

# Top 5 user agents
echo "Top 5 user agents:"
awk -F'"' '{print $6}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5
