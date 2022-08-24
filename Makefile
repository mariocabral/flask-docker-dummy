
build:
	docker build -t docker.test .

run:
	docker run -d -p 56733:80 --name=docker.test -v $PWD:/app docker.test

stop:
	docker stop docker.test

start:
	docker start docker.test

update: stop build start
