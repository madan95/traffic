# Start Docker
start:
	@echo Starting docker
	./createTraffic.sh

# Stop Services
stop:
	@echo Stoping docker services
	docker-compose stop

# Stop and Remove containers, network, images and volumes
remove:
	@echo Removing Docker Container, Network, Images and Volumes
	docker-compose down
	docker network rm traffic
