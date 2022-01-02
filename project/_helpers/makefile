#base_url := $(call args, "http://127.0.0.1:8000")
base_url := "http://127.0.0.1:8000"

curl:
	curl -sX 'GET' \
    	$(base_url)/ping \
    	-H 'accept: application/json' \
    	| jq
httpie:
	http -b $(base_url)/ping
	http --json POST $(base_url)/summaries/ url=http://testdriven.io
	http --json GET $(base_url)/summaries/1/
	http --json GET $(base_url)/summaries/
postgres:
	docker-compose exec web-db psql -U postgres web_dev -c "\dt"
pytest:
	docker-compose exec web python -m pytest
pg_init:
	 docker-compose exec web aerich upgrade
coverage:
	docker-compose exec web python -m pytest --cov="." --cov-report html
lint-check:
	# flake8
	docker-compose exec web flake8 . || true
	# black
	docker-compose exec web black . --check
	docker-compose exec web black . --diff
	# isort
	docker-compose exec web isort . --check-only
	docker-compose exec web isort . --diff
lint-solve:
	docker-compose exec web flake8 .
	docker-compose exec web black .
	docker-compose exec web isort .
