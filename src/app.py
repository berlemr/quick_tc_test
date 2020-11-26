def basic_func(x:int) -> int:
    try:
        result = 2 / x
        return result
    except ZeroDivisionError as e:
        raise e