# Development Container

## Pull from Docker Hub

- Pull the Docker image from Docker Hub:
  ```shell
  docker pull ryd3v/devbox:ryd3v
  ```
- Run
  ```shell
  docker run -it -v ${PWD}:/mnt ryd3v/devbox:ryd3v
  ```

## Build from source

- Build the Docker image using the specified Dockerfile and tag it as ubuntu:ryd3v:
  ```shell
  docker build -f ./Dockerfile -t ryd3v/devbox:ryd3v .
  ```

### Run

- Run the Docker container interactively, mounting the current working directory to /mnt in the container:
  ```shell
  docker run -it -v ${PWD}:/mnt devbox:ryd3v
  ```

## Use the Container Again

### List all containers

- List containers
  ```shell
  docker ps -a
  ```

### Start the container

- Start an existing Docker container by its ID or name:
  ```shell
  docker start <container_id_or_name>
  ```

### Attach to the container

- Execute an interactive bash shell in the running container:
  ```shell
  docker exec -it <container_id_or_name> /bin/bash
  ```
