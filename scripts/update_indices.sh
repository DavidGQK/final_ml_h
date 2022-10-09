#! /bin/bash
# Update indices on new generation
ssh root@162.55.189.72 "cp /root/final/dgs/dgs_2 /indices -r"
ssh root@167.235.75.88 "cp /root/final/dgs/dgs_2 /indices -r"

# # rolling update index service
ssh root@162.55.189.72 "docker service update --force --update-parallelism 1 --update-delay 30s qa_index_service_0"
ssh root@162.55.189.72 "docker service update --force --update-parallelism 1 --update-delay 30s qa_index_service_1"
ssh root@162.55.189.72 "docker service update --force --update-parallelism 1 --update-delay 30s qa_index_service_2"
ssh root@162.55.189.72 "docker service update --force --update-parallelism 1 --update-delay 30s qa_index_service_3"

# rolling update gateway service
ssh root@162.55.189.72 "docker service update --force --update-parallelism 1 --update-delay 30s qa_gateway"