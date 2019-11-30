#!/usr/bin/env bash

_() {
  (
    docker-compose down
    docker-compose rm

    #当前文件夹路径
    DIR=$(cd $(dirname $0); pwd)

    rm -rf ${DIR}/opt/elasticsearch1/data
    rm -rf ${DIR}/opt/elasticsearch1/logs
    rm -rf ${DIR}/opt/elasticsearch2/data
    rm -rf ${DIR}/opt/elasticsearch2/logs
    rm -rf ${DIR}/opt/elasticsearch3/data
    rm -rf ${DIR}/opt/elasticsearch3/logs
    rm -rf ${DIR}/opt/logstash/data
    rm -rf ${DIR}/opt/logstash/logs
    rm -rf ${DIR}/opt/cerebro/logs
  )
}
_