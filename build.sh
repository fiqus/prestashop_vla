docker network create prestashop-net
docker run -ti --name prestashop_db --network prestashop-net -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306 -d mysql:5.7
docker run -ti --name prestashop_web --network prestashop-net -e DB_SERVER=prestashop_db -p 8080:80 -d prestashop/prestashop