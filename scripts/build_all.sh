#! /bin/bash
docker build -t gateway /root/final/gateway/
docker build -t index_service /root/final/index_service/
docker build -t tf_model /root/final/tf_model/