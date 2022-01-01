# pull official base image
FROM python:3.10.1-alpine3.14

# set desired poetry version via build-arg
ARG POETRY_VERSION=1.1.12

# set working directory
WORKDIR /usr/src/app

# create non-privileged user and set permission on source directory
RUN addgroup --gid 10001 app \
  && adduser \
    --uid 10001 \
    --home /home/app \
    --shell /bin/ash \
    --ingroup app \
    --disabled-password \
    app \
  && chown -R 10001:10001 /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# setup poetry
RUN apk add --no-cache --virtual .build-deps \
    curl~=7.79 \
    gcc~=10.3.1 \
    libressl-dev~=3.3.3 \
    libffi-dev~=3.3 \
    musl-dev~=1.2.2 \
  && pip install --no-cache-dir poetry==${POETRY_VERSION} \
  && apk del .build-deps

COPY ./poetry.lock ./
COPY ./pyproject.toml ./
COPY ./project ./

RUN poetry config virtualenvs.create false \
  && poetry install

USER 10001

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/uvicorn"]
CMD ["app.main:app", "--reload", "--workers=1",  "--host=0.0.0.0", "--port=8000"]
