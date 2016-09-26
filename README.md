PerconaLive Amsterdam 2016 - ProxySQL Tutorial
===

## Overview
Files for proxysql tutorial at PLAM16

## Dependencies

- Docker
- Ansible (_version:_ 2.1.0+)
- Bash

## Setup

- Check out proxysql ansible plugins from [here](https://github.com/bmildren/proxysql_ansible_modules)

- Create a symlink in the ansible directory `library` to the ansible plugins previously copied

- Run `setup.sh`

- Connect to ProxySQL Admin interface: `./mysql -h proxy-admin`

- Connect to ProxySQL SQL interface: `./mysql -h proxy-sql`

- Connect to hosts used for rewrite and failover demonstrations

    - master: `./mysql -h master`

    - slave: `./mysql -h slave`

- Connect to hosts used for mirroring demonstration

    - MySQL A (5.6): `./mysql -h mysqla`

    - MySQL B (5.7): `./mysql -h mysqlb`

## TODO:

- Initial thought to have 2 separate docker mysql environments:
    - First with 2 nodes in standard replication for query rewrite and failover parts
    - Second with 2 nodes standalone, one running MySQL 5.6 and second running MySQL 5.7
- Single proxysql container that connects to both environments.