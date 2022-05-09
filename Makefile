include make-compose.mk

install:
	bundle

start:
	bin/rails s -b 0.0.0.0 -p 3000

check: lint test

lint:
	bundle exec rubocop

test:
	bin/rails test
