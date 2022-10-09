#! /bin/bash
# start just one time
# creating registry
docker run -d -p 5000:5000 --restart=always --name registry registry:2

# loading gateway
docker tag gateway 162.55.189.72:5000/gateway
docker push 162.55.189.72:5000/gateway

# loading index_service
docker tag index_service 162.55.189.72:5000/index_service
docker push 162.55.189.72:5000/index_service

# loading tf_model
docker tag tf_model 162.55.189.72:5000/tf_model
docker push 162.55.189.72:5000/tf_model