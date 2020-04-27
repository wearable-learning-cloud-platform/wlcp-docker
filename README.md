# wlcp-docker

# Overview

This repository is used to setup a local docker instance with all of the wearable learning cloud platform microservices in order to get the entire system up and running locally.

# Setup

## Install Docker Desktop

The first step is to install Docker Desktop. This can be installed on either Windows or Mac OS. Follow the appropriate link below depending on your operating system.

[Windows](https://docs.docker.com/docker-for-windows/install)

[Mac OS](https://docs.docker.com/docker-for-mac/install/)

## Configure Docker Desktop

After you have installed Docker Desktop some additional settings need to be configured in order to allocate more resources on your machine. Right click on the docker icon in the task bar and go to settings.

Under advanced select atleast 2 CPU & 2048mb of memory. Feel free to select more if you have more (up to half of all resources).

![image](https://user-images.githubusercontent.com/23061418/80401367-3a1c0280-888a-11ea-881e-c8eb856fafd5.png)

## Install the AWS Command Line Interface

[Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

## Configure the AWS Command Line Interface

Download the AWS Access Token CSV file below:

[AWS CSV TOKEN]()

Open up a command line and run the following command:

> aws configure

Enter the **Access key ID** and **Secret access key** from the CSV you downloaded above.

## Cloning this repository

# Pull the Portainer Image for Local Docker Management (Optional but Recommended)

