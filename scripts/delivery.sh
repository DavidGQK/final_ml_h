# downloading dgs files which have results of embedding clusterization on servers

#! /bin/bash
for host in root@162.55.189.72 root@167.235.75.88; do
    echo $host
    rsync -ravzP /root/final/dgs $host:/root/final/dgs
done
