swagger UI ref: http://127.0.0.1:8000/docs

# Setup

up/down
```shell
doc up -d --build
doc down -v
```
# Migrations

django `python manage.py makemigrations` equivalent.
```shell
docker-compose exec web aerich init -t app.db.TORTOISE_ORM
```
django `python manage.py migrate` equivalent.
```shell
docker-compose exec web aerich init-db
```

# Result
```shell
❯ make postgres        
docker-compose exec web-db psql -U postgres web_dev -c "\dt"
            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------w
 public | aerich      | table | postgres
 public | textsummary | table | postgres
(2 rows)
```
