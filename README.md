# Development Container

ryd3v/devbox -> [Docker Hub](https://hub.docker.com/repository/docker/ryd3v/devbox/general)

DevBox is a lightweight Docker container tailored for software development tasks. It comes pre-configured with essential tools and packages commonly used in software engineering projects, including Git, Python, curl, wget, nano, and more. Designed for versatility and ease of use, DevBox provides a consistent development environment across different platforms. Whether you're working on web development, data science, or any other software project, DevBox offers a hassle-free solution to set up your development environment quickly. Take control of your development workflow with DevBox.

When running the container interactively, it mounts the current working directory (PWD) of the host to the `/mnt` folder inside the container. This allows for seamless interaction between the host filesystem and the containerized environment, making it easy to work with project files and data.

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
