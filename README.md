# Nginx Log Analyser

This project is part of the DevOps roadmap. It aims to help you practice shell scripting skills by analyzing Nginx log files. The script extracts useful statistics from the log, such as the top 5 IP addresses, most requested paths, status codes, and user agents.

You can find more details about this project in the [DevOps roadmap](https://roadmap.sh/projects/nginx-log-analyser).

## Description

The script reads an Nginx access log and provides the following information:

- Top 5 IP addresses with the most requests.
- Top 5 most requested paths.
- Top 5 response status codes.
- Top 5 user agents.

The script uses a combination of Unix utilities like `awk`, `sort`, `uniq`, and `head` to extract and analyze the log data.

## Requirements

- Bash shell (should work on most Unix-based systems, including Linux and macOS)
- Log file (you can download it using the provided link)

## How to Run

1. **Download the log file:**

   Use `curl` or `wget` to download the Nginx access log:
   ```bash
   curl -o nginx-access.log https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log
    ```
2. **Save and make the script executable:**
    Save the script as log_analyser.sh, then run:

   ```bash
    chmod +x log_analyser.sh
    ```
    
3. **Run the script:**
    Execute the script with:

    ```bash
    ./log_analyser.sh
    ```