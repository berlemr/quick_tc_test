import pytest

from app import basic_func

def test_basic_func_success():
    result = basic_func(2)
    assert result == 4

def test_basic_func_fail():
    result = basic_func(2)
    assert result == 3