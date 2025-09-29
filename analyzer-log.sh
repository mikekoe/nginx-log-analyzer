#!/bin/bash
echo "Welcome to Nginx log analyzer"
LOGFILE="${1:-./log-file.txt}"
echo "========================================="
echo "Top 5 IP addresses with the most requests"
echo "========================================="
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -rn | head -5 | while read count ip; do printf "%-15s : %d requests\n" "$ip" "$count"; done
echo "==========================="
echo "Top 5 most requested paths"
echo "==========================="
awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -rn | head -5 | while read count path; do printf "%-50s : %d requests\n" "$path" "$count"; done
echo "==========================="
echo "Top 5 response status codes"
echo "==========================="
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -rn | head -5 | while read count status; do printf "%-10s : %d occurrences\n" "$status" "$count"; done
echo "==================="
echo "Top 5 User agents"
echo "==================="
awk -F\" '{print $6}' "$LOGFILE" | sort | uniq -c | sort -rn | head -5 | while read count agent; do printf "%d requests : %s\n" "$count" "$agent"; done
