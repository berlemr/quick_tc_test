def basic_func(x:int) -> float:
    try:
        result = 2 / x
        return result
    except ZeroDivisionError as e:
        raise e

def an_untested_func():
    statement = 'this is not tested'
    return statement