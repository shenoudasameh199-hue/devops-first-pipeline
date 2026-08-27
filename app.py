def add(a, b):
    return a + b

if __name__ == "__main__":
    result = add(2, 3)
    if result == 5:
        print("Tests Passed Successfully!")
    else:
        raise ValueError("Test failed!")
