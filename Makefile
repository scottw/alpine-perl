build: TAG=5.30
build:
	docker build -t scottw/alpine-perl:$(TAG) .
