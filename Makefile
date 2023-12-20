# Deploys using sls deploy with the specified aws account
deploy-dev:
	serverless deploy --aws-profile personal

teardown-dev:
	serverless remove --aws-profile personal

connect:
	ssh -i "minecraft-host-key.pem" ubuntu@ec2-52-90-138-179.compute-1.amazonaws.com

# Runs the stack in the background without taking over your current terminal session 
spin-up:
	docker-compose up -d
	
# Tears down running containers, including those that are not defined within the compose file
teardown:
	docker-compose down --remove-orphans
