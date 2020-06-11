#!/bin/bash

if [[ -z "${ADMIN_PASS}" ]]; then
  echo "You need to provide a new admin pass"
else
  ADMIN_DIR="/var/www/html/admin"
  echo "Deleting install folder and moving admin folder to: ${ADMIN_DIR}..."
  docker exec economia_social_vla_prestashop_web_1 rm -rf /var/www/html/install
  docker exec economia_social_vla_prestashop_web_1 mv ${ADMIN_DIR} ${ADMIN_DIR}${ADMIN_PASS}

  echo "OK. You can enter the admin console in /admin{ADMIN_PASS}"
fi

