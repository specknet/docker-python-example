# docker-python-example

A simple example showing you how to install Docker and create an image that runs a simple python program. Output can be accessed from the host filesystem by using a docker volume.

1. Install Docker desktop or engine: [https://docs.docker.com/engine/install/](https://docs.docker.com/get-docker/)
2. Start Docker service, if required
3. Build a docker image from this Dockerfile: _docker build -t python-hello ._
4. Create and run a docker container from the image: docker run -t -v /home/user/Documents/GitHub/docker-python-example/out/:/out python-hello
5. The python output should now be available in the _out_ subfolder in your local filesystem
6. To create an archive from the docker image, _run docker save python-hello > python-hello.tar_

Jupyter notebooks
Jupyter can be used in Docker as follows:

1. Navigate to the jupyter subdirectory
2. Build a docker image: _docker build -t jupyter_test ._
3. Create and run a docker container: _docker run --rm -p 8889:8888 jupyter_test start-notebook.py --NotebookApp.token='my-token'_
4. Navigate to http://localhost:8889/lab?token=my-token in a web browser on the host machine to open the jupyterlab environment.
5. You should find a very simple notebook in /work that imports the pandas library, which was listed as a dependency in the Dockerfile.

*instructions taken from https://docs.docker.com/guides/use-case/jupyter/*

Hopefully the above examples can be extended to run your project code.
