# local-colab-runtime
---
# Installation 
1. Install [Docker](https://docs.docker.com/get-docker/). 
2. From this repo, build the image `docker build -t colab .`
3. Start the container `docker run --rm -p 8888:8888 --gpus all colab`
4. Take the token provided in the output, and provide it to colab (must be `localhost`, not `127.0.0.1`). 
5. Kill the contiainer (control-c), and you've deleted the runtime. 

# Notes
- If you want to persist the data between container restarts, add the following to the `run` command `-v "${PWD}":/home/jovyan/work`. 
