
start:
	GITHASH=$$(git rev-parse head) docker-compose up -d --build

stop:
	docker-compose down

test:
	curl 'http://localhost:3000/' && curl 'http://localhost:3001/' && echo 'It works!'
