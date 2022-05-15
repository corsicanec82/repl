compose-build:
	docker compose build

compose:
	docker compose up -d

compose-restart:
	docker compose restart web

compose-restart-full:
	docker compose restart

compose-down:
	docker compose down --remove-orphans

compose-clear:
	docker compose down --remove-orphans --volumes

ci-build:
	docker compose -f docker-compose.yml build

ci-check:
	docker compose -f docker-compose.yml up --remove-orphans --abort-on-container-exit

compose-production:
	docker compose -f docker-compose.production.yml up
