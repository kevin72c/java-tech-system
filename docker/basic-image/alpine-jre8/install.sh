#!/bin/sh
# alpine jdk8基础镜像
docker build -t registry.cn-hangzhou.aliyuncs.com/kevin72c/alpine-jre8:latest .
docker push registry.cn-hangzhou.aliyuncs.com/kevin72c/alpine-jre8:latest
