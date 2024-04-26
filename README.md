# docker-python-example

A simple example showing you how to install Docker and create an image that runs a simple python program. Output can be accessed from the host filesystem by using a docker volume.

1. Install Docker desktop or engine: [https://docs.docker.com/engine/install/](https://docs.docker.com/get-docker/)
2. Start Docker service, if required
3. Build a docker image from this Dockerfile: _docker build -t python-hello ._
4. Create and run a docker container from the image: docker run -t -v /home/user/Documents/GitHub/docker-python-example/out/:/out python-hello
5. The python output should now be available in the _out_ subfolder in your local filesystem
6. To create an archive from the docker image, _run docker save python-hello > python-hello.tar_
