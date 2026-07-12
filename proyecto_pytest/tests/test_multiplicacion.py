import pytest

def multiplicacion(a, b):
    return a * b

def test_multiplicacion():
    assert multiplicacion(1, 2) == 2
    assert multiplicacion(-1, 1) == -1
    assert multiplicacion(0, 100) == 0