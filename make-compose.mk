compose-setup: compose-build compose-install

compose-build:
	docker compose build

compose-install:
	docker compose run app make install

compose-bash:
	docker compose run --service-ports app bash

compose-lint:
	docker compose run app make lint

compose-test:
	docker compose run app make test

compose:
	docker compose up
