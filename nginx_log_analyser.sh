#!/bin/bash

# Top 5 IP addresses with the most requests
awk -F '"' '{ split($1, a, " "); split($2, b, " "); split($3, c, " "); print a[1]"-,-"b[2]"-,-"c[1]"-,-"$(NF-1)}' nginx-access.log.txt > filter_request.txt

function most_requests() {
    local field_index=$1
    local field_name=$2
    local output_file="${field_name}.txt"
    local all_requests=$(awk -F'-,-' -v idx="$field_index" '{ print $idx }' filter_request.txt | sort)
    local pre_request=""
    local count_request=0
    > "$output_file"
    echo "$all_requests" | while read -r line; do
        local curr_request=$(echo "$line" | tr -d '\n')
        if [ "$pre_request" = "$curr_request" ]; then
            ((count_request++))
        else 
            if [ -n "$pre_request" ]; then
                echo "$pre_request - $count_request requests" >> "$output_file"
            fi
            count_request=1
        fi
        pre_request=$curr_request
    done
    if [ -n "$pre_request" ]; then
        echo "$pre_request - $count_request requests" >> "$output_file"
    fi
    # Sort and print 5 most ip request
    sort -rt " " -n -k3,3 "$output_file" | awk 'NR<=5'
}

echo "Top 5 IP addresses with the most requests: "
most_requests 1 "ip_addresses"

echo "Top 5 most requested paths: "
most_requests 2 "requested_paths"

echo "Top 5 response status codes: "
most_requests 3 "status_codes"

echo "Top 5 user agents: "
most_requests 4 "user_agents"
