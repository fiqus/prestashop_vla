#!/bin/bash

if [[ -z "${ADMIN_PASS}" ]]; then
  echo "You need to provide a new admin pass"
else
    ADMIN_DIR="/var/www/html/admin"
    if [ -d "$ADMIN_DIR" ]; then
      echo "Deleting install folder and moving admin folder to: ${ADMIN_DIR}..."
      docker exec economia_social_vla_prestashop_web_1 rm -rf /var/www/html/install
      docker exec economia_social_vla_prestashop_web_1 mv /var/www/html/admin /var/www/html/admin${ADMIN_PASS}

      echo "OK. You can enter the admin console in /admin{ADMIN_PASS}"
    else
      echo "Error: ${ADMIN_DIR} not found. Can not continue."
      exit 1
    fi
fi

