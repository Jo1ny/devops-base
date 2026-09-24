import sys
import os

print("=== [СТАРТ ПРОЦЕССА ВНУТРИ КОНТЕЙНЕРА] ===")
print(f"Версия Python внутри контейнера: {sys.version.split()[0]}")
print(f"Текущая рабочая директория: {os.getcwd()}")
print(f"Имя пользователя внутри контейнера (UID): {os.getuid()}")
print("=== [УСПЕШНОЕ ЗАВЕРШЕНИЕ РАБОТЫ] ===")