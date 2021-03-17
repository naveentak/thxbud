aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 680342684790.dkr.ecr.us-east-1.amazonaws.com

docker build -t thxbudimg .

docker tag thxbudimg:latest 680342684790.dkr.ecr.us-east-1.amazonaws.com/thxbudimg:latest

docker push 680342684790.dkr.ecr.us-east-1.amazonaws.com/thxbudimg:latest