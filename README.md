# To reproduce

1. `$ docker-compose up -d mariadb`
2. `$ docker-compose up -d server`
3. `$ docker-compose exec server bash`
4. `# npm run migrate` < multiple times
