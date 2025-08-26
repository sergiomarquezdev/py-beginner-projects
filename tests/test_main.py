# tests/test_main.py
from app.main import main


def test_main():
    assert main() == 0
