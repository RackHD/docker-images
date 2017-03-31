APPLICATION = consul
ORGANIZATION = RackHD

default: build

build:
	make -C base
	make -C client
	make -C server

push:
	docker push rackhd/consul:base
	docker push rackhd/consul:client
	docker push rackhd/consul:server
