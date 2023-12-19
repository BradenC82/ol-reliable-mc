# Runs the stack in the background without taking over your current terminal session 
spin-up:
	docker-compose up -d
	
# Tears down running containers, including those that are not defined within the compose file
teardown:
	docker-compose down --remove-orphans
