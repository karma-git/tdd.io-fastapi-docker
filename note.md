# Overview
Test-Driven Development with FastAPI and Docker course (v1.2.2)

ref: https://testdriven.io/courses/tdd-fastapi/

> Learn how to build, test, and deploy a text summarization microservice with Python, FastAPI, and Docker!

**Author**: [Michael Herman](https://github.com/mjhea0) ([Real Python](https://realpython.com/) co-founder)

<details>
<summary>What do you need to know?</summary>

> This is not a beginner course. It's designed for the advanced-beginner -- someone with at least six months of web development experience. 
> Before beginning, you should have some familiarity with the following topics. 
> Refer to these resources for more info:

**Docker and Docker Compose**:
- [Get started with Docker](https://docs.docker.com/get-started/)
- [Get started with Docker Compose](https://docs.docker.com/compose/gettingstarted/)
- [Docker Best Practices for Python Developers](https://testdriven.io/blog/docker-best-practices/)
**FastAPI**
- First Steps ](https://fastapi.tiangolo.com/tutorial/first-steps/) from the official FastAPI tutorial
</details>

<details>
<summary>What tools and technologies are used in this course?</summary>

**Core**
1. Python
2. FastAPI
3. Docker
4. Postgres
5. Tortoise ORM
6. Uvicorn
7. Gunicorn
8. Swagger/OpenAPI

**Testing and Linting**
1. pytest
2. Coverage.py
3. Flake8
4. Black
5. isort
6. HTTPie

**Services**
1. GitHub Actions
2. GitHub Packages
3. Heroku

</details>



# Content
## Part 1 - Foundation and Concepts

> In this first part, you'll learn how to develop an async RESTful API with Python, FastAPI, and Postgres. 
> You'll containerize FastAPI and Postgres to run inside Docker containers and configure pytest in order to practice Test-Driven Development (TDD).

1. Develop an asynchronous RESTful API with Python and FastAPI
2. Practice Test-Driven Development
3. Test a FastAPI app with pytest
4. Interact with a Postgres database asynchronously
5. Containerize FastAPI and Postgres inside a Docker container
6. Run unit and integration tests with code coverage
7. Check your code for any code quality issues via a linter

## Part 2 - Deployment, Testing, and Best Practices

> In the second part, you'll start by deploying FastAPI, Gunicorn, Uvicorn, and Postgres to Heroku with Docker. 
> You'll then continue to build out the RESTful API as you write unit and integration tests. 
> Finally, we'll develop a text summarization service to produce article summaries from a given URL.

1. Configure GitHub Actions for continuous integration and deployment
2. Use GitHub Packages to store Docker Images
3. Speed up a Docker-based CI build with Docker Cache
4. Deploy FastAPI, Uvicorn, and Postgres to Heroku with Docker
5. Parameterize test functions and mock functionality in tests with pytest
6. Run tests in parallel with pytest-xdist
7. Document a RESTful API with Swagger/OpenAPI
8. Run a background process outside the request/response flow

# 
