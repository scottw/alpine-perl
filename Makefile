build: TAG=5.26
build:
	docker build -t scottw/alpine-perl:$(TAG) .
