
Provides a convenient way to connect frontend/backend services together:

* [nginx](https://nginx.org/en/): generic HTTP proxy server
* [python-flask](http://flask.pocoo.org/) micro-web framework ([gunicorn](http://gunicorn.org/) WSGI HTTP server)
* [memcached](https://memcached.org/): memory object caching system
* [postgre](https://www.postgresql.org/): relational database system

```
+---------+   +--------+
|memcached|   |postgres|  Services
+-+-------+   +-----+--+
  ^       ^         ^
+-+-----+ |    +----+--+
|  api  | +----+  web  |  Applications
+---+---+      +---+---+
    ^              ^
+---+--------------+---+
|         nginx        |  Server
+----------------------+

```

## Startup

```
# start everything
docker-compose up [--build]

# [OPTIONAL]
# start individual services (with dependencies)
docker-compose up api

# Build and run containers in the foreground
make docker-deps-up-nodaemon
```

## Usage

First, browse to [Here](http://localhost:8080), and view the response:
```
Hello world! - 1
```

This queried postgres for index #1, and set the value in memcached (accessible 
across both the web and api containers) for 30 seconds. 

To view the value, check the response [Here](http://localhost:8080/api):
```
Hello world! - [(1, 'Bitwolf', 'morbi vel lectus')]
```

Browsing to different indexes, e.g. [ID 2](http://localhost:8080/2) will set
different information into memcached. 

## References

* [nginx - DockerHub](https://hub.docker.com/_/nginx/)
* [python - DockerHub](https://hub.docker.com/_/python/)
* [memcached - DockerHub](https://hub.docker.com/_/memcached/)
* [postgres - DockerHub](https://hub.docker.com/_/postgres/)

