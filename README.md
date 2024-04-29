# Python-App Project

This project contains a simple Python application that runs a web server.

## Building the Docker Image

To build the Docker image for this project, execute the following command in your terminal:

```bash
docker build -t python-app .
```

This command will utilize the `Dockerfile` located in the current directory to construct the Docker image and tag it as `python-app`.

## Running the Docker Container

After the image has been constructed, you can initiate the container with this command:

```bash
docker run -d -p 8080:8080 python-app
```

If your application listens on a port other than `8080`, replace `8080:8080` with the correct port mapping. The `-d` flag will run the container in detached mode, freeing up the terminal for additional commands.

## Accessing the Application

Once the container is operational, the application can be accessed by visiting `http://localhost:8080` in your web browser. Make sure that the port number corresponds with the one you designated in the `docker run` command.
