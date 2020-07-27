registry := docker.io
image    := nosredna85/aax-to-mp3
version  := $(shell date -u +%Y%m%d)-$(shell git rev-parse --short HEAD)

.PHONY: build
build:
	docker build -t $(image):latest .

.PHONY: release
release: build
	docker tag $(image):latest $(registry)/$(image):latest
	docker tag $(image):latest $(registry)/$(image):$(version)
	docker push $(registry)/$(image):latest
	docker push $(registry)/$(image):$(version)