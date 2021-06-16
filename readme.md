# Jenkins Docker Compose

Use this repository to run Jenkins as part of docker-compose system.

This repository mainly follows the offical Jenkins instructions on [Jenkins.io](https://www.jenkins.io/doc/book/installing/docker/)

##  Instructions
1. Clone the git locally  
1. Run the docker compose command:
   ```bash
   $ docker-compose up -d
   ```
1. Complete the [post-installation setup wizard](https://www.jenkins.io/doc/book/installing/docker/#setup-wizard)

## Customization
Using the file _plugins.yml_ you can add / change the plugins to install when setting up the system

## Next Steps
- [ ] Add Reverse Proxy
- [ ] Make script with more predefined steps (initial user etc.)