swagger UI ref: http://127.0.0.1:8000/docs

# App

## Setup

up/down
```shell
doc up -d --build
doc down -v
```
## RESTful Routes

| Endpoint        | 	HTTP Method | 	CRUD Method | 	Result               |
|-----------------|--------------|--------------|-----------------------|
| /summaries      | 	GET         | 	READ        | 	get all summaries    |
| /summaries/:id  | 	GET         | 	READ        | 	get a single summary |
| /summaries      | 	POST        | 	CREATE      | 	add a summary        |
| /summaries/:id  | 	PUT         | 	UPDATE      | 	update a summary     |
| /summaries/:id  | 	DELETE      | 	DELETE      | 	delete a summary     |

# Deploy

## Heroku

```shell
# auth
export HEROKU_API_KEY=ea21d17e-...
heroku auth:token > /dev/null 2>&1
heroku container:login

# create app
❯ heroku addons:create heroku-postgresql:hobby-dev --app sleepy-thicket-77414
Creating heroku-postgresql:hobby-dev on ⬢ sleepy-thicket-77414... !
# enable db
❯ heroku addons:create heroku-postgresql:hobby-dev --app mighty-brook-75156
Creating heroku-postgresql:hobby-dev on ⬢ mighty-brook-75156... free
Database has been created and is available
 ! This database is empty. If upgrading, you can transfer
 ! data from another database with pg:copy
Created postgresql-opaque-19454 as DATABASE_URL
Use heroku addons:docs heroku-postgresql to view documentation
# build and push image:
❯ docker push registry.heroku.com/mighty-brook-75156/web
# release
❯ heroku container:release web --app mighty-brook-75156
Releasing images web to mighty-brook-75156... done
# makemigrations
❯ heroku run aerich upgrade --app mighty-brook-75156
Running aerich upgrade on ⬢ mighty-brook-75156... up, run.8213 (Free)
Success upgrade 0_20220101160411_init.sql
```

## Artifacts (docker image)

Create GH PAC.

```shell
# login
docker login registry.gitlab.com -u karma
docker login docker.pkg.github.com -u karma-git
# build
doc --build
# publish
doc push web-prod  # doesn't work
docker push docker.pkg.github.com/karma-git/fastapi-tdd.io-docker/summarizer:latest
docker push registry.gitlab.com/web352/fastapi/fastapi-tdd.io-docker:latest
```

## CI - Actions

> secrets.GITHUB_ = error

## TDD flow

Again, for each, we'll:
1. write a test
2. run the test, to ensure it fails (red)
3. write just enough code to get the test to pass (green)
4. refactor (if necessary)
