start:
	make delete && make merge && make compose
logs:
	docker logs neovim
exec:
	docker exec -it neovim bash
build:
	src/scripts/build.sh
merge:
	src/scripts/merge.sh
compose:
	docker compose up -d
delete: 
	docker rm -f neovim && docker image rm neovim-dockerized-neovim && docker volume rm neovim-dockerized_neovim
create-engine:
	docker buildx create --use
