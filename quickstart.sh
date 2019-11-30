#!/usr/bin/env bash

_() {
  (
    #当前文件夹路径
    DIR=$(cd $(dirname $0); pwd)

    mkdir -p ${DIR}/opt/elasticsearch1/data
    mkdir -p ${DIR}/opt/elasticsearch1/logs
    mkdir -p ${DIR}/opt/elasticsearch2/data
    mkdir -p ${DIR}/opt/elasticsearch2/logs
    mkdir -p ${DIR}/opt/elasticsearch3/data
    mkdir -p ${DIR}/opt/elasticsearch3/logs
    mkdir -p ${DIR}/opt/logstash/data
    mkdir -p ${DIR}/opt/logstash/logs
    mkdir -p ${DIR}/opt/cerebro/logs

    chmod -R 777 ${DIR}/opt/elasticsearch1/data
    chmod -R 777 ${DIR}/opt/elasticsearch1/logs
    chmod -R 777 ${DIR}/opt/elasticsearch2/data
    chmod -R 777 ${DIR}/opt/elasticsearch2/logs
    chmod -R 777 ${DIR}/opt/elasticsearch3/data
    chmod -R 777 ${DIR}/opt/elasticsearch3/logs
    chmod -R 777 ${DIR}/opt/logstash/data
    chmod -R 777 ${DIR}/opt/logstash/logs
    chmod -R 777 ${DIR}/opt/cerebro/logs

    docker-compose build --no-cache --force-rm
    docker-compose up
  )
}
_