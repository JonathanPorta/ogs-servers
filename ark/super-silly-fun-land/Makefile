REPO = quay.io/jonathanporta
IMAGE = ogs-servers-ark-super-silly-fun-land
PERSIST_DIR = $(shell pwd)/persist
all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-v $(PERSIST_DIR):/srv/ShooterGame/Saved/\
		-p 27015:27015\
		-p 7777:7777\
		-p 7778:7778\
		-p 32330:32330\
		-it $(REPO)/$(IMAGE)

connect:
	docker run\
		--net="host"\
		-v $(PERSIST_DIR):/srv/ShooterGame/Saved/\
		-p 27015:27015\
		-p 7777:7777\
		-p 7778:7778\
		-p 32330:32330\
		-it --entrypoint=/bin/bash $(REPO)/$(IMAGE)

push:
	docker push $(REPO)/$(IMAGE):latest

deploy: _update_svc _update_rc

_create:
	kubectl create -f ./deployment/service.yml
	kubectl create -f ./deployment/rc.yml

_update_svc:
	kubectl apply -f ./deployment/service.yml

_update_rc:
	kubectl apply -f ./deployment/rc.yml
