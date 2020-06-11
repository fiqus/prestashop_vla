1. Install Docker and Docker Compose (Docker without sudo)
2. Create `.env` file in `./docker/prestashop_db_server`
    - `MYSQL_ROOT_PASSWORD=admin`
    - `MYSQL_DATABASE=prestashop_db`
3. Run `docker-compose up`
4. Enter `localhost:8080`
5. Database data:
    - Database server address: `prestashop_db_server`
    - Database name: `prestashop_db`
    - Database login:  `root`
    - Database password:  `admin`
    - Tables prefix: `ps_`
6. After installation is completed run `ADMIN_PASS=yourpass ./post-install.sh`
7. Enter `localhost:8080/adminyourpass`
