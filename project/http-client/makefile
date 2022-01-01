curl:
	curl -sX 'GET' \
    	'http://127.0.0.1:8000/ping' \
    	-H 'accept: application/json' \
    	| jq
httpie:
	http -b http://127.0.0.1:8000/ping
postgres:
	docker-compose exec web-db psql -U postgres web_dev -c "SELECT 1;"
