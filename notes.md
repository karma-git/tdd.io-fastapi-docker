swagger UI ref: http://127.0.0.1:8000/docs

# Setup

up/down
```shell
doc up -d --build
doc down -v
```
# RESTful Routes

|Endpoint|	HTTP Method| 	CRUD Method |	Result|
|--------|-------------|--------------|---------|
|/summaries|	GET| 	READ        |	get all summaries|
|/summaries/:id|	GET| 	READ        | 	get a single summary |
|/summaries|	POST| 	CREATE      | 	add a summary |