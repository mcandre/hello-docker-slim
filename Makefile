IMAGE=mcandre/hello-docker-slim
BIN=src/bin/hello

all: run

$(BIN):
	@docker run -it -v $(shell pwd):/mnt mcandre/docker-yasm sh -c 'cd /mnt/src; make'

build: Dockerfile $(BIN)
	@docker build -t $(IMAGE) .

run: clean-containers build
	@docker run $(IMAGE)
	@docker images | grep $(IMAGE) | awk '{ print $$(NF-1), $$NF }'

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

dockerlint:
	@$(shell npm bin)/dockerlint

lint: editorconfig dockerlint

publish:
	docker push $(IMAGE)
