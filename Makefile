build: TAG=5.32
build:
	docker build -t scottw/alpine-perl:$(TAG) .
