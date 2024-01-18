#!/bin/bash

# Check if the sitename is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 sitename"
  exit 1
fi

sitename="$1"
nginx_sites_available="/etc/nginx/sites-available"
nginx_sites_enabled="/etc/nginx/sites-enabled"
web_directory="/var/www/$sitename"

# Remove Nginx configuration file from sites-available
echo "Removing Nginx configuration file from sites-available: $sitename"
rm -f "$nginx_sites_available/$sitename"

# Remove symbolic link from sites-enabled
echo "Removing symbolic link from sites-enabled: $sitename"
rm -f "$nginx_sites_enabled/$sitename"

# Restart Nginx to apply changes
echo "Restarting Nginx..."
service nginx restart

# Remove web directory
echo "Removing web directory: $web_directory"
rm -rf "$web_directory"

echo "Cleanup complete for $sitename"
