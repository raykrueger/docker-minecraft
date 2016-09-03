.PHONY: build run

build:
	docker build -t raykrueger/minecraft .

run: build
	docker run --rm -p 25565:25565 raykrueger/minecraft
