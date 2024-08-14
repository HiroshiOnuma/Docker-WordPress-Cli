#!/bin/bash

# WordPress install
#=======================
wp core install \
--url="http://localhost:8080" \
--title="My-WordPress" \
--admin_user='admin' \
--admin_password='test' \
--admin_email='info@example.com' \
--allow-root

# generally setting
# =======================
# Catchphrase empty
wp option update blogdescription --allow-root ''
# Language "japan"
wp language core install --allow-root --activate ja
# Time zone and date/time notation
wp option update --allow-root timezone_string 'Asia/Tokyo'
wp option update --allow-root date_format 'Y-m-d'
wp option update --allow-root time_format 'H:i'

# Permalink settings
# =======================
wp option update permalink_structure --allow-root /%postname%/

# Exterior
# =======================
wp theme delete --allow-root twentysixteen
wp theme delete --allow-root twentyseventeen
wp theme delete --allow-root twentynineteen
wp theme delete --allow-root twentytwenty

# Plugins
# =======================
wp plugin delete --allow-root hello.php
wp plugin delete --allow-root akismet
wp plugin install --allow-root wp-multibyte-patch --activate
