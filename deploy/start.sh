#!/bin/bash
#重新生成docker镜像
docker build -t register.jar:0.0.1
#启用pod
kubectl create -f register-rc.yaml