
build:
	docker build . | grep 'Successfully built' | awk '{print $$3}' > docker_id.txt

test:
	ruby basic_server_test.rb

publish: build
	./publish.sh

run:
	docker run -p 127.0.0.1:3000:8080 "$$(cat docker_id.txt)"

recompile:
	docker run -p 127.0.0.1:3000:8080 "$$(docker build . | grep 'Successfully built' | awk '{print $$3}')"
