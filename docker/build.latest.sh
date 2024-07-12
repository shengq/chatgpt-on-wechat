#!/bin/bash

unset KUBECONFIG

cd .. && docker build -f docker/Dockerfile.latest \
             -t shengq/chatgpt-on-wechat .

docker tag shengq/chatgpt-on-wechat shengq/chatgpt-on-wechat:$(date +%y%m%d)
