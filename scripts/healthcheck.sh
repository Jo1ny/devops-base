#!/usr/bin/env bash

# Скрипт проверки статуса Nginx и доступности сайта
TARGET_URL="http://localhost:8080"

echo "=== Проверка сервиса Nginx ==="
if systemctl is-active --quiet nginx; then
    echo "[OK] Служба nginx активна"
else
    echo "[FAIL] Служба nginx не запущена!"
    exit 1
fi

echo "=== Проверка ответа сайта ==="
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$TARGET_URL")

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "[OK] Сайт доступен, код $STATUS_CODE"
else
    echo "[FAIL] Сайт вернул код $STATUS_CODE"
    exit 1
fi
