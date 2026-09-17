#!/usr/bin/env bash

# Если передали аргумент ($1) — берем его. Если нет — используем localhost:8085
TARGET_URL="${1:-http://localhost:8085}"

echo "=== Запуск проверки сервиса ==="
echo "Целевой адрес: $TARGET_URL"

# Делаем запрос: -s (тихий), -f (падать с кодом ошибки при 4xx/5xx), -o (в никуда)
curl -s -f -o /dev/null "$TARGET_URL"
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    echo "[OK] Сервис доступен и отдает успешный ответ (код 0)"
    exit 0
else
    echo "[CRITICAL] Сервис недоступен или вернул ошибку (код $EXIT_CODE)"
    exit 1
fi
