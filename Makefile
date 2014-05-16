
BUILD=docker build -t

default:

docker-clean:
	docker rm `docker ps -a -q`
	docker rmi `docker images -a | grep "^<none>" | awk '{print $3}'`

ubuntu:
	$(BUILD) benchpress/ubuntu ubuntu/

base:
	$(BUILD) benchpress/base environments/base/

.PHONY: default docker-clean ubuntu base
