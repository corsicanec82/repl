include make-compose.mk

install:
	bin/setup
	yarn install

start:
	bin/rails server -b 0.0.0.0 -p 3000

start-frontend:
	npx nodemon -L --watch webpack.config.js --exec yarn build:watch

check: lint test

lint: lint-rubocop lint-slim

lint-rubocop:
	bundle exec rubocop

lint-slim:
	bundle exec slim-lint app/views

test:
	bin/rails test

console:
	bin/rails console

.PHONY: test
