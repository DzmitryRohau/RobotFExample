

def counts_backwards(end_number):
    if end_number < 1:
        raise Exception("Enter number > 0")
    items = range(1, end_number + 1)

    for item in reversed(items):
        if item % 3 == 0 and item % 5 == 0:
            print("Testing")
        elif item % 3 == 0:
            print("Software")
        elif item % 5 == 0:
            print("Agile")
        else:
            print(str(item))


if __name__ == "__main__":
    counts_backwards(int(input("Insert number > 1: ")))
