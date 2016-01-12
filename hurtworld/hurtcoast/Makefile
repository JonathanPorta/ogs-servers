REPO = "quay.io/jonathanporta"
IMAGE = "ogs-servers-hurtworld-hurtcoast"

all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-v $(pwd)/logs:/logs/\
		-p 12871:12871/udp\
		-p 12881:12881/udp\
		-it $(REPO)/$(IMAGE)

push:
	docker push $(REPO)/$(IMAGE):latest
