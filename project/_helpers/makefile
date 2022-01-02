curl:
	curl -sX 'GET' \
    	'http://127.0.0.1:8000/ping' \
    	-H 'accept: application/json' \
    	| jq
httpie:
	http -b http://127.0.0.1:8000/ping
	http --json POST http://localhost:8000/summaries/ url=http://testdriven.io
postgres:
	docker-compose exec web-db psql -U postgres web_dev -c "\dt"
#postgres-makemigrations:
#	docker-compose exec web aerich init -t app.db.TORTOISE_ORM
#postgres-migrate:
#	docker-compose exec web aerich init-db
#postgres-generate-schema:
#	docker-compose exec web python app/db.py
pytest:
	docker-compose exec web python -m pytest
pg_init:
	 docker-compose exec web aerich upgrade
