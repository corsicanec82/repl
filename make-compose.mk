compose-setup: compose-build compose-install

compose-build:
	docker compose build

compose-install:
	docker compose run --rm app make install

compose-bash:
	docker compose run --rm app bash

compose-lint:
	docker compose run --rm app make lint

compose-test:
	docker compose run --rm app make test

compose:
	docker compose up -d

compose-down:
	docker compose down --remove-orphans
