# Requirements

* Java
* Maven 3.0.4
* <a href="https://docs.docker.com/install/">Docker</a> 
* <a href="https://docs.docker.com/compose/install/">Docker-Compose</a>

# Installation
Note: After installing Docker see the post-install to use docker w/o sudo
<a href="https://docs.docker.com/install/linux/linux-postinstall/">Post-Install</a>

Note: the databases are listening on the default ports, so you might need
to pick other ports if you have MongoDB/MySQL/PostgreSQL running on your host machine.
To update port forwarding, edit `docker-compose.yml`.

Alternatively, run `shut.sh`, which will attempt to shut down your native databases.

The step by step is as follows:
  * Install <a href="https://docs.docker.com/install/">Docker</a> 
  * Install <a href="https://docs.docker.com/compose/install/">Docker-Compose</a>
  * Provision :
```bash
mvn install # this will setup databases for h2 and hsqldb
```
```bash
cd docker
```

To see all might services run 
```bash
./startContainer.sh --help
```

To run specific service:
```bash
./startContainer.sh service-name
```

E.g.
```bash
./startContainer.sh mongodb
```
It will start up *MongoDB* on default port `27017` and load all init data for tests.

To run all databases - use the `all` parameter.

```bash
./startContainer all
```

To stop all containers:
```bash
docker-compose down
```
