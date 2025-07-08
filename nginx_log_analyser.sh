#!/bin/bash

# Filter IP, request paths, response status codes, user agents
if [ ! -d "tmp/" ]; then 
    mkdir tmp
fi

if [ -d tmp ]; then
    rm -rf tmp/*
fi

awk -F '"' '{ 
    split($1, a, " "); 
    split($2, b, " "); 
    split($3, c, " "); 
    print a[1]"|"b[2]"|"c[1]"|"$(NF-1)"|"
}' nginx-access.log.txt |
while IFS='|' read -r ip path code ua; do
    echo "$ip" >> tmp/ip_list.txt;
    echo "$path" >> tmp/path_list.txt;
    echo "$code" >> tmp/code_list.txt;
    echo "$ua" >> tmp/ua_list.txt;
done

function top_5() {
    local inputfile=$1
    local title_output=$2
    # Top 5
    output=$(sort -n "$inputfile" | uniq -c | sort -nr -k1,1 | head -n 5)
    echo "$title_output: "
    echo "$output" | awk '{
        count=$1;
        $1="";
        sub(/^ /, "");
        print $0" - "count" requests"
    }'
    echo ""
}

top_5 tmp/ip_list.txt "Top 5 IP addresses"
top_5 tmp/path_list.txt "Top 5 request paths"
top_5 tmp/code_list.txt "Top 5 response status codes"
top_5 tmp/ua_list.txt "Top 5 user agents"
