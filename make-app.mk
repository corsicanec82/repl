app-logs:
	docker compose logs -f --tail=100 web

app-debug:
	docker attach --sig-proxy=false --detach-keys="ctrl-c" $(shell docker ps -q --filter name=web)

app-bash:
	docker compose run --rm web bash

app-install:
	docker compose run --rm web make install

app-lint:
	docker compose run --rm web make lint

app-test:
	docker compose run --rm web make test

app-console:
	docker compose run --rm web make console
