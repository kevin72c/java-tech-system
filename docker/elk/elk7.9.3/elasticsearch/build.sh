#!/bin/sh
docker build -t registry.cn-hangzhou.aliyuncs.com/xxx/elasticsearch:latest .
docker push registry.cn-hangzhou.aliyuncs.com/xxx/elasticsearch:latest