aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 397120343186.dkr.ecr.us-east-2.amazonaws.com
docker-compose pull
docker-compose up