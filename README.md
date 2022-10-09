# final_ml_h

# Deploy
1. bash /root/final/scripts/build_all.sh
2. bash /root/final/scripts/docker_registry.sh
3. bash /root/final/scripts/start.sh

# Example of using:
POST query to *http://162.55.189.72:14005/input* with JSON body:
```
{
    "query": "text"
}
```
```
{
    "best_match": "text",
    "cluster": "cluster"
}
```
# Indices update
bash /root/final/update_indices.sh

# Embeddings model
TF universal-sentence-encoder-large model is used for embeddings [*https://tfhub.dev/google/universal-sentence-encoder-large/5*]
