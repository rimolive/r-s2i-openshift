
IMAGE_NAME = rimolive/r-35-centos7

.PHONY: build
build:
	podman build -t $(IMAGE_NAME) .

.PHONY: test
test:
	podman build -t $(IMAGE_NAME)-candidate .
	IMAGE_NAME=$(IMAGE_NAME)-candidate test/run
