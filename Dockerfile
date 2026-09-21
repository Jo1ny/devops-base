# 1. Базовый образ (фундамент)
FROM nginx:alpine

# 2. Очистка дефолтного мусора
RUN rm -rf /usr/share/nginx/html/*

# 3. Копирование наших файлов с хоста внутрь контейнера
COPY site/index.html /usr/share/nginx/html/index.html

# 4. Документирование сетевого порта
EXPOSE 80

# 5. Главный процесс, который будет жить в контейнере
CMD ["nginx", "-g", "daemon off;"]
