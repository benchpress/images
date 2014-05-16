
default: base

docker-clean:
	docker rm $(docker ps -a -q)
	docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')

base:
	docker build -t benchpress/base environments/base/


.PHONY: default docker-clean base
