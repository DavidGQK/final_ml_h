# final_ml_h

# Deploy
1. bash /root/final/scripts/build_all.sh
2. bash /root/final/scripts/docker_registry.sh - залив докер образов в registry
3. bash /root/final/start.sh

# Example of using:
POST query to *http://162.55.189.72:14005/input* with JSON body:
```
{
   "query": "What is life?"
}
```
