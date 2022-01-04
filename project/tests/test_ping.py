# project/tests/test_ping.py


from app import main  # noqa: F401


def test_ping(test_app):
    response = test_app.get("/ping")
    assert response.status_code == 200
    assert response.json() == {"environment": "dev", "ping": "pong", "testing": True}
