IMAGE := shouldbee/flyway

build:
	sudo docker build -t $(IMAGE) .
