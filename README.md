# wlcp-docker

# Overview

This repository is used to setup a local docker instance with all of the wearable learning cloud platform microservices in order to get the entire system up and running locally.

# Setup

## Install Docker Desktop

The first step is to install Docker Desktop. This can be installed on either Window, Linux or Mac OS. Follow the appropriate link below depending on your operating system.

[Windows](https://docs.docker.com/docker-for-windows/install)

[Linux](https://docs.docker.com/engine/install/)

[Mac OS](https://docs.docker.com/docker-for-mac/install/)

## Configure Docker Desktop

After you have installed Docker Desktop some additional settings need to be configured in order to allocate more resources on your machine. Right click on the docker icon in the task bar and go to settings.

Under advanced select atleast 2 CPU & 2048mb of memory. Feel free to select more if you have more (up to half of all resources).

![image](https://user-images.githubusercontent.com/23061418/80401367-3a1c0280-888a-11ea-881e-c8eb856fafd5.png)

## Install the AWS Command Line Interface

[Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

## Configure the AWS Command Line Interface

Download the AWS Access Token CSV file below:

[AWS CSV TOKEN](https://drive.google.com/file/d/138A0D85HnU3PQKTahf0yjo9bAY_c8RdI/view?usp=sharing)

Open up a command line and run the following command:

> aws configure

Enter the **Access key ID** and **Secret access key** from the CSV you downloaded above.

## Cloning this repository

Make sure that you have git installed on your system.

[Install Git](https://git-scm.com/downloads)

Clone this repository using the following command:

> git clone https://github.com/wearable-learning-cloud-platform/wlcp-docker.git

Now open a command prompt and enter the directory you just cloned.

If you are on windows run the following command:

> run.bat

If you are on Mac/Linux run the following command:

> run.sh

The entire system will now boot up. It may take a few minutes and you may need to try booting it up multiple times in order to getting thing up and running for the first time.

You can access the system at the following link:

[Click here to access system locally](http://localhost:8050)

# Pull the Portainer Image for Local Docker Management (Optional but Recommended)

Run the following commands in a command prompt:

> docker volume create portainer_data

> docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

[Click here to open portainer](http://localhost:9000)

You can now manage all of the WLCP containers:

![image](https://user-images.githubusercontent.com/23061418/80402483-f75b2a00-888b-11ea-8ab9-2907aa6b4efc.png)

# Development Environment Setup

This section includes information on what tools you need to help develop the WLCP as well as some guidelines and best practices while developing.

## IDEs & Tools

The following IDEs and tools are required to develop the WLCP. They all must be downloaded and installed.

[Spring Tool Suite](https://spring.io/tools) - For Java Development (Backend)

[VSCode](https://code.visualstudio.com/) - For JavaScript Development (Frontend)

[NodeJS](https://nodejs.org/en/) - For running the frontend (make sure to install NPM as well)

## Workflow

This section describes the workflow for developing both backend Java code and frontend JavaScript code. The first step before doing any development is to make sure you have completed the docker setup above and the entire system is up and running by using the run.bat or run.sh script.

Next you need to determine which microservice you need to work with (wlcp-api, wlcp-gameserver, wlpc-ui, etc) and stop that microservice in portainer. Then you must clone the microservice from GitHub (or pull if you have already cloned) and start the application locally either in Spring Tool Suite (for Java) or NodeJS for JavaScript. Below are examples of the work flow for the backend and frontend.

### Backend Development Example (wlcp-api)

### Frontend Development Example (wlcp-ui)

