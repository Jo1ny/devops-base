with open("log.txt", "a") as f:
    print("Привет из контейнера!", file=f)

print("Строка успешно записана в log.txt!")
