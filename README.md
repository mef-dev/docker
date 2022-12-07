# Overview
The Serverless MEF.DEV platform provides accelerated development, hosting, and application management capabilities for independent developers and teams based on the IoC Container Composition through an agile development process based on continuous integration principles. It has a user-friendly interface that simplifies the process of developing integration applications with a good level of service agreement and based on enterprise-approved standards for authorization, authentication, managed deployment with standardized approaches to monitoring and SOX controls.
# MEF.DEV platform in a Container

## Quick Start with bash script
The script checks for installed Docker Engine and docker compose, if the components are missing, the script will install them
1) git clone https://github.com/mef-dev/docker.git
2) cd docker
3) sudo sh install-project.sh

## Quick Start with Docker Compose
1) git clone https://github.com/mef-dev/docker.git
2) cd docker
3) sudo docker-compose up -d

### Check the status of running containers
1) sudo docker-compose ps
![image](https://user-images.githubusercontent.com/112643667/206200447-4608bdf3-84c2-4fa3-9cda-030c14ac8dff.png)

### After running the containers, you can use the following ports
1) http://localhost:81
The APP is web frontend (GUI) element of serverless MEF.DEV openAPI platform.
2) http://localhost:82
The API is a backend stateless element of serverless MEF.DEV openAPI platform.
3) http://localhost:83
The AUTODOC is a backend statefull element of serverless MEF.DEV openAPI platform.
4) http://localhost:84
The SERVICEHOST is a backend statefull element of serverless MEF.DEV openAPI platform.
5) http://localhost:85
PlantUML is an open-source tool allowing users to create diagrams from a plain text language.
6) mssql - localhost:1433

### Remove running containers and volumes
1) sudo docker-compose down -v
