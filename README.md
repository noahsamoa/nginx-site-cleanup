# Nginx Site Cleanup Script

This bash script is designed to remove a specified site from both Nginx sites-available and sites-enabled, and then delete the corresponding directory from /var/www

## Usage

1. Make sure you have the necessary permissions to modify Nginx configurations and remove directories.

2. Make the script executable:

   ```bash
   chmod +x cleanup.sh
   ```

3. Run the script with the sitename as an argument:

   ```bash
   ./cleanup.sh your_sitename
   ```
   Replace your_sitename with the actual sitename you want to clean up.
   
## Caution
This script will remove Nginx configuration files from both sites-available and sites-enabled, restart Nginx to apply changes, and then delete the corresponding web directory.
Always double-check your sitename before running the script to avoid unintentional data loss.
