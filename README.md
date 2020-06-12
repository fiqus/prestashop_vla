# Prestashop for Villa La Angostura township

## Development

### Running the Prestashop in you local environment.

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

## Production

### Currently running environment.

We are running a dockerized version of prestashop, the Apache server and the MySql Server
are running in a Droplet in Digital Ocean.

You can login into the Droplet via ssh - ask somebody to add your public key to
the authorized keys if you need access to the server.

The application is located in `/opt/prestashop_vla`

### Running/Stopping production servers.

> Run `docker-compose down` to stop the servers

> Run `docker-compose up` to start the servers

### Volumes and persistent data.

Persitent data for containers is stored in `/var/prestashop_vla`

> `/var/prestashop_vla/prestashop_web` is for the Apache server

> `/var/prestashop_vla/prestashop_db` is for the MySQL server






