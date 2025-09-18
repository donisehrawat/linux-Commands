#!/bin/bash

read -p "Enter the path where you want to save the file: " path

Time_Stamp=$(date +"%Y%m%d_%H%M%S")
File_Name="system_report_${Time_Stamp}.txt"
final_path="${path}/${File_Name}"

{
    echo "Welcome user"
    echo "The current user is $(whoami)"
    echo "The current hostname is $(hostname)"
    echo "Date and Time currently is $(date)"
    echo "Disk usage of root dir:"
    df -h /
    echo "available and used memory: "
    free -h
    echo "Top 5 running processes by memory usage:"
    ps aux --sort=-%mem | awk 'NR<=6'
} | tee "$final_path"

echo "File saved successfully to $final_path"
