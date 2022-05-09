compose-setup: compose-build compose-install

compose-build:
	docker compose build

compose-install:
	docker compose run app make install

compose-bash:
	docker compose run --service-ports app bash

compose:
	docker compose up

install:
	bundle

start:
	bin/rails s -b 0.0.0.0 -p 3000

lint:
	bundle exec rubocop
