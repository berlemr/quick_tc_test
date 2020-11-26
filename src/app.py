def basic_func(x:int) -> float:
    try:
        result = 2 / x
        return result
    except ZeroDivisionError as e:
        raise e