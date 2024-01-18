# Cleanup Script

This bash script is designed to remove a specified directory and its contents twice. It's useful for cleaning up directories on your server.

## Usage

1. Make sure you have the necessary permissions to remove the directory.

2. Make the script executable:

   ```bash
   chmod +x cleanup.sh
   ```
3. Run the script with an arugment for the site name to be deleted from Nginx sites-available and sites-enables, as well as the root directory in var/www/
