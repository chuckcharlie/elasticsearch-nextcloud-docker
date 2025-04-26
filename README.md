# Fork info
This was forked from https://github.com/R0Wi/elasticsearch-nextcloud-docker

This fork provides two things... 1) An ARM version and 2) The latest Elasticache version

I use this primarily for my NextCloud fulltextsearch_elasticsearch app.

Docker image is hosted here: https://hub.docker.com/r/chuckcharlie/elasticsearch-nextcloud-docker-multiarch

# elasticsearch-nextcloud-docker
A docker container hosting elasticsearch with ingest-attachment plugin enabled (compatible with NC fulltext search)

## How to use this
The version of ElasticSearch is set in the `version.txt` file. This version number is also set on the Docker image tag. To run the container, use the example `docker-compose.yml` file. This will pull the latest available version I have built, and works for both ARM and AMD.

If you need additional information, please refer to the official docs:

* https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
* https://hub.docker.com/_/elasticsearch

## Authentication

To setup Basic Authentication for the [built-in user `elastic`](https://www.elastic.co/guide/en/elasticsearch/reference/current/built-in-users.html), adjust the environment variables as follows:

```yaml
    environment:
      - cluster.name=docker-cluster
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
      - discovery.type=single-node
      - xpack.security.enabled=true
      - xpack.security.http.ssl.enabled=false
      - ELASTIC_PASSWORD=mySuperSecret
```

To authenticate against your ES instance, you could for example embed the credentials into your url like this: http://elastic:mySuperSecret@localhost:9200/myindex. See https://www.elastic.co/guide/en/elasticsearch/reference/current/security-minimal-setup.html for more details.


