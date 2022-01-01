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

# Setup

```shell
echo "alias doc='docker compose'" >> ~/.zshrc
source ~/.zshrc
doc up
```

> That happens when you set the TESTING environment variable to foo? Try this out. Then update the variable to 0.

```shell
export TESTING=foo
# ---
❯ http -b http://127.0.0.1:8000/ping
Internal Server Error
# ---
pydantic.error_wrappers.ValidationError: 1 validation error for Settings
testing
  value could not be parsed to a boolean (type=type_error.bool)
```

Feel free to use any http client which you want.
