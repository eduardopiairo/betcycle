
def get_multiples(value, min_value, max_value):
    for x in range(min_value, max_value):
        if (x % value) == 0:
            print(x, " É multiplo de ", value)


def get_result():
    """

    @rtype: object
    """
    value = int(input("Multiplos de: "))
    min_value = int(input("Entre (valor minimo): "))
    max_value = int(input("E valor maximo: "))

    get_multiples(value, min_value, max_value)


get_result()
