compose-setup: compose-build compose-install

compose-build:
	docker compose build

compose-install:
	docker compose run --rm web make install

compose-bash:
	docker compose run --rm web bash

compose-lint:
	docker compose run --rm web make lint

compose-test:
	docker compose run --rm web make test

compose:
	docker compose up -d

compose-down:
	docker compose down --remove-orphans

compose-test-build:
	docker compose -f docker-compose.yml build

compose-test-check:
	docker compose -f docker-compose.yml up --remove-orphans --abort-on-container-exit

compose-production:
	docker compose -f docker-compose.production.yml up
