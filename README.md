# Inception

## What is a container ?

This project is part of the fifth circle of projects of the 42 common core. The goal is to implement container using Docker technology. You will find the subject of the project into the repository. My grade : 125/100

## How to use it 

1. Install Docker `https://docs.docker.com`
2. Install Docker Compose `https://docs.docker.com/compose/install/`
3. Clone it `git clone git@github.com:AnthonyVerdon-42Projects/inception.git`.
4. run `make`

## What is implemented

There is 3 mandatorys services that are implemented :
- nginx
- wordpress
- mariadb

You can connect to the nginx server via the URL `https://localhost:443` or `{DOMAIN_NAME}`

There is also 5 bonus services : 
- redis
- FTP server
- static website
- adminer
- service of your choice ( I chose to implement a minecraft server )

You can connect to the static website via the URL `http://localhost:5000`, to adminer `http://localhost:8080` and to the minecraft server `http://localhost:25565`

## environments variables

For a question of security, we had to use a `.env` file to store all the sensitive informations. Here is the list, and which container use them : 

nginx :
- SSL_KEY_PATH
- SSL_CERTF_PATH

wordpress/mariadb :
- DOMAIN_NAME
- DATABASE_NAME
- WP_USER_NAME
- WP_USER_PASSWORD
- WP_USER_MAIL
- WP_ADMIN_NAME
- WP_ADMIN_PASSWORD
- WP_ADMIN_MAIL

ftp server : 
- FTP_USER_NAME
- FTP_USER_PASSWORD

## Find a bug ?

If you find an undefined behaviour (crash, leaks, ...), please submit an issue or contact me