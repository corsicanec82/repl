compose-build:
	docker compose build

compose-bash:
	docker compose run --service-ports app bash

compose:
	docker compose up

start:
	bin/rails s -b 0.0.0.0 -p 3000
