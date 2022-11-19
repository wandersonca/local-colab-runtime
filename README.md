# local-colab-runtime

This contianer can run on your local machine and provide all your CPUs and GPUs to a Google Colab environment. 

---
##  GPU support (Windows Only)
1. Install [Docker](https://docs.docker.com/get-docker/). 
2. From this repo, build the image `docker build -f Dockerfile-gpu -t colab .`
3. Start the container `docker run --rm -p 8888:8888 --gpus all colab`
4. Take the token provided in the output, and provide it to colab when selecting local runtime (must be `localhost`, not `127.0.0.1`). 
5. Kill the contiainer (control-c), and you've deleted the runtime. 

## Without GPU Support (MacOS or Windows)
1. Install [Docker](https://docs.docker.com/get-docker/). 
2. From this repo, build the image `docker build -t colab .`
3. Start the container `docker run --rm -p 8888:8888 colab`
4. Take the token provided in the output, and provide it to colab when selecting local runtime (must be `localhost`, not `127.0.0.1`). 
5. Kill the contiainer (control-c), and you've deleted the runtime. 

# Notes
- If you want to persist the data between container restarts, add the following to the `run` command `-v "${PWD}":/home/jovyan/work`. 
- I only tested this on Windows with WSL2 enabled YMMV
