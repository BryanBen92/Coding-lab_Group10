#!/bin/bash

process_vitals() {
    echo "Scanning for CRITICAL vitals..."
    echo "=== Critical Alerts Report: $(date) ===" >> reports/critical_alerts.txt

    if [ -f active_logs/heart_rate_log.log ]; then
        grep "CRITICAL" active_logs/heart_rate_log.log | awk -F' \| ' '{print $1, $2, $3}' >> reports/critical_alerts.txt
        echo "Heart rate critical alerts processed."
    else
        echo "heart_rate_log.log not found, skipping."
    fi

    if [ -f active_logs/temperature_log.log ]; then
        grep "CRITICAL" active_logs/temperature_log.log | awk -F' \| ' '{print $1, $2, $3}' >> reports/critical_alerts.txt
        echo "Temperature critical alerts processed."
    else
        echo "temperature_log.log not found, skipping."
    fi

    echo "Critical alerts written to reports/critical_alerts.txt"
}
