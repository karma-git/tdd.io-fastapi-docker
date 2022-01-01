swagger UI ref: http://127.0.0.1:8000/docs

> > NOTE: if you're not familiar with poetry fell free to read [my gist](https://gist.github.com/karma-git/2690afc72cb10197440fb7f3c5384d74)

Install dependencies:

```shell
poetry install
```

Activate venv:

```shell
poetry shell
```

Launch FastAPI:
```shell
cd project
uvicorn app.main:app --reload
```

Send request:
```shell
curl -X 'GET' \
>   'http://127.0.0.1:8000/ping' \
>   -H 'accept: application/json'
{"ping":"pong!"}%
```
