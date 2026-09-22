#!/bin/bash

process_vitals() {
    echo "Scanning for CRITICAL vitals..."

    grep "CRITICAL" active_logs/heart_rate_log.log | awk -F' \| ' '{print $1, $2, $3}' >> reports/critical_alerts.txt
    echo "Heart rate critical alerts processed."

    grep "CRITICAL" active_logs/temperature_log.log | awk -F' \| ' '{print $1, $2, $3}' >> reports/critical_alerts.txt
    echo "Temperature critical alerts processed."

    echo "Critical alerts written to reports/critical_alerts.txt"
}
