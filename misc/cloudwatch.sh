#!/bin/bash

set -e

if [ -f "/opt/cloudwatch/aws-scripts-mon/mon-put-instance-data.pl" ]; then
    echo "Amazon scripts are installed already. Exitting."
    exit 0
fi

sudo mkdir -p /opt/cloudwatch
cd /opt/cloudwatch && sudo wget https://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.1.zip
sudo unzip CloudWatchMonitoringScripts-1.2.1.zip
sudo rm -f CloudWatchMonitoringScripts-1.2.1.zip

# Set up cron
echo "*/5 * * * * root /opt/cloudwatch/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --from-cron" | sudo tee /etc/cron.d/cloudwatch-mem
echo "*/5 * * * * root /opt/cloudwatch/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --auto-scaling=only --from-cron" | sudo tee /etc/cron.d/cloudwatch-mem-autoscaling

