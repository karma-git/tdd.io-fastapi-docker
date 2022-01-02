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

# pytest
## run specific test
```shell
❯ doc exec web python -m pytest -k ping
======================================================= test session starts ========================================================
platform linux -- Python 3.10.1, pytest-6.2.5, py-1.11.0, pluggy-1.0.0
rootdir: /usr/src/app
plugins: anyio-3.4.0
collected 5 items / 4 deselected / 1 selected                                                                                      

tests/test_ping.py .                                                                                                         [100%]

================================================= 1 passed, 4 deselected in 0.24s ==================================================
```
## run w/o warnings
```shell
❯ doc exec web python -m pytest -p no:warnings       
======================================================= test session starts ========================================================
platform linux -- Python 3.10.1, pytest-6.2.5, py-1.11.0, pluggy-1.0.0
rootdir: /usr/src/app
plugins: anyio-3.4.0
collected 5 items                                                                                                                  

tests/test_ping.py .                                                                                                         [ 20%]
tests/test_summaries.py ....                                                                                                 [100%]

======================================================== 5 passed in 0.51s =========================================================
```
## only last failed
```shell
❯ doc exec web python -m pytest --lf          
======================================================= test session starts ========================================================
platform linux -- Python 3.10.1, pytest-6.2.5, py-1.11.0, pluggy-1.0.0
rootdir: /usr/src/app
plugins: anyio-3.4.0
collected 5 items                                                                                                                  
run-last-failure: no previously failed tests, not deselecting items.

tests/test_ping.py .                                                                                                         [ 20%]
tests/test_summaries.py ....                                                                                                 [100%]

======================================================== 5 passed in 0.39s =========================================================
```
## run only the tests with names that match the string expression
```shell
❯ doc exec web python -m pytest -k "summary and not test_read_summary"    
======================================================= test session starts ========================================================
platform linux -- Python 3.10.1, pytest-6.2.5, py-1.11.0, pluggy-1.0.0
rootdir: /usr/src/app
plugins: anyio-3.4.0
collected 5 items / 4 deselected / 1 selected                                                                                      

tests/test_summaries.py .                                                                                                    [100%]

================================================= 1 passed, 4 deselected in 0.24s ==================================================
```
...

ref: https://testdriven.io/courses/tdd-fastapi/restful-routes/#H-6-pytest-commands
