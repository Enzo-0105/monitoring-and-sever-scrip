#!/bin/bash

# Install necessary packages
sudo apt update
sudo apt install -y net-tools docker.io nginx jq

# Copy devopsfetch.sh to /usr/local/bin
sudo cp devopsfetch.sh /usr/local/bin/devopsfetch
sudo chmod +x /usr/local/bin/devopsfetch

# Create systemd service
sudo tee /etc/systemd/system/devopsfetch.service <<EOF
[Unit]
Description=DevopsFetch Service

[Service]
ExecStart=/usr/local/bin/devopsfetch
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd and start the service
sudo systemctl daemon-reload
sudo systemctl enable devopsfetch.service
sudo systemctl start devopsfetch.service
