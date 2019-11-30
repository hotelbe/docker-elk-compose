# Elastic stack (ELK) on Docker using Docker-Compose

![Elastic Stack version 7.4.2](https://img.shields.io/badge/ELK-7.4.2-blue.svg?style=flat)

[Elastic ELK Stack][elk-stack] - [Elasticsearch](https://www.elastic.co/products/elasticsearch), [Logstash](https://www.elastic.co/products/logstash), and [Kibana](https://www.elastic.co/products/kibana) in one package. To be used by [Docker Compose](https://docs.docker.com/compose/). 

Based on the official Docker images from [Elastic][elk-stack]:

* [Elasticsearch]
* [Logstash]
* [Kibana]
* [Cerebro]
* [Filebeat]

## Pre-requisites

- Docker (EE/CE)
- Docker-Compose

## Quick-Start instrux

By default, the services in the stack will expose the following TCP ports:
* 5000: Logstash TCP input
* 9200: Elasticsearch HTTP
* 9300: Elasticsearch TCP transport
* 9400: Elasticsearch Cluster Web Frontend
* 5601: Kibana Web Frontend


### Getting started

1.拉起
```bash
$ ./quickstart.sh
```

