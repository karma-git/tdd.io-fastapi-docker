swagger UI ref: http://127.0.0.1:8000/docs

# Setup

up/down
```shell
doc up -d --build
doc down -v
```
# TDD

```shell
❯ make pytest
docker-compose exec web python -m pytest
================================ test session starts ================================
platform linux -- Python 3.10.1, pytest-6.2.5, py-1.11.0, pluggy-1.0.0
rootdir: /usr/src/app
plugins: anyio-3.4.0
collected 1 item                                                                    

tests/test_ping.py .                                                          [100%]

================================= 1 passed in 0.30s =================================
```

[Given-When-Then](https://testdriven.io/courses/tdd-fastapi/pytest-setup/)
