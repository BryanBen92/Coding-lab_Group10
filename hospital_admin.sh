#!/bin/bash

initialize_system() {
    if [ -d "active_logs" ]; then
        echo "active_logs already exists."
    else
        echo "Creating active_logs..."
        mkdir active_logs
    fi

    if [ -d "archived_logs" ]; then
        echo "archived_logs already exists."
    else
        echo "Creating archived_logs..."
        mkdir archived_logs
    fi

    if [ -d "reports" ]; then
        echo "reports already exists."
    else
        echo "Creating reports..."
        mkdir reports
    fi
}
secure_data() {
    echo "Securing active_logs directory..."
    chmod 700 active_logs
}

initialize_system
