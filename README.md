PerconaLive Amsterdam 2016 - ProxySQL Tutorial
===

## Overview
Files for proxysql tutorial at PLAM16

## Dependencies

- Docker
- Bash

## Setup

- Run `docker-compose up -d`

- Connect to ProxySQL: `./mysql -h proxysql` Password is: `admin`

- Connect to MySQL A: `./mysql -h mysqla` Password is: `secret`

- Connect to MySQL B: `./mysql -h mysqlb` Password is: `secret`

## TODO:

- Initial thought to have 2 separate docker mysql environments:
    - First with 2 nodes in standard replication for query rewrite and failover parts
    - Second with 2 nodes standalone, one running MySQL 5.6 and second running MySQL 5.7
- Single proxysql container that connects to both environments.