# Jenkins with Configuration as Code (CASC) 

This repository contains a Docker Compose configuration that sets up a Jenkins instance with Configuration as Code (CASC) using the Jenkins Configuration as Code Plugin.

## Prerequisites
- Docker and Docker Compose installed on your machine
- A Jenkins Configuration as Code (CASC) file named `jenkins.yaml` in the root of the repository
- "plugins.txt" file with the list of the jenkins plugins you want to install

## Usage

- Clone the repository
```bash
    git clone https://github.com/snrow/Mission-1.git
```

- Start the Jenkins container
```bash
    bash init.sh
```

- Stop the Jenkins container
```bash 
    docker compose down
```

- Destroy the Jenkins container with his volumes
```bash
    bash armageddon.sh
```



- Jenkins will be available on `http://localhost:8080` 

## Configuration

The Jenkins Configuration as Code (CASC) file is located at `./jenkins.yaml` and is mapped to `/var/jenkins_home/casc_configs/jenkins.yaml` in the container. This file is used to configure the Jenkins instance during startup.

- Jenkins data is stored in the `jenkins_home` volume, which is located in the root of the repository.
- The `/var/run/docker.sock` file is also mapped to the container, allowing Jenkins to interact with the host's Docker daemon.

## Note
- The Jenkins instance uses the `jenkins-casc` image.
- The container's name is `jenkins`
- The version of the compose file is `3`

## Troubleshooting
- If you encounter any issues, check the logs of the Jenkins container using the command `docker-compose logs -f jenkins`.
- if you want to stop the container use `docker-compose down`.
- If you want to start the container again use `docker-compose up`.

## Next steps
Once Jenkins is up and running, you can log in to the account by using the user name and password that given to you in the home page in the "welcome" message if you not sure you can see the username and the password in the "jenkins.yaml" file
