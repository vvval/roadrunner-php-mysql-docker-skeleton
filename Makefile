init: build up

build: ## Build all or c=<name> containers in foreground
	docker-compose -f docker-compose.yml build --no-cache $(c)

up: composer-install ## Start all or c=<name> containers in foreground
	docker-compose -f docker-compose.yml up $(c)

restart: | stop start ## Restart all or c=<name> containers

stop: ## Stop all or c=<name> containers
	docker-compose -f docker-compose.yml stop $(c)

start: ## Start all or c=<name> containers in background
	docker-compose -f docker-compose.yml up -d $(c)

rr-serve: | start composer-install ##run rr server
	docker exec app ../rr/rr serve -v -d

composer-install: start ## install dependencies
	docker exec composer composer install

status: ## Show status of containers
	docker-compose -f docker-compose.yml ps