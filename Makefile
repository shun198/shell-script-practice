prepare:
	docker pull centos:centos7
	docker run -it -d --name centos bash

run:
	docker run -it -d --name centos bash

stop:
	docker stop centos

start:
	docker start centos

exec:
	docker exec -it centos bash

destroy:
	docker stop centos
	docker rm centos
	docker rmi centos:centos7
