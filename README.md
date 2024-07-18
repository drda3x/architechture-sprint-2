# Шардирование
Запускаем контейнеры
```shell
cd mongo-sharding && docker compose up -d && cd -
```

Инициализируем шарды
```shell
cd mongo-sharding && ./scripts/init.sh && cd -
```

Проверяем наличие документов на шардах
```shell
cd mongo-sharding && ./scripts/check.sh && cd -
```

Останавливаем приложение
```shell
cd mongo-sharding && docker compose down && cd -
```

Приложение доступно по адресу http://localhost:8080/

# Репликация
Запускаем контейнеры
```shell
cd mongo-sharding-repl && docker compose up -d && cd -
```

Инициализируем шарды
```shell
cd mongo-sharding-repl && ./scripts/init.sh && cd -
```

Приложение доступно по адресу http://localhost:8080/

Останавливаем приложение
```shell
cd mongo-sharding-repl && docker compose down && cd -
```

# Кеширование
Запускаем контейнеры
```shell
cd mongo-sharding-repl-cache && docker compose up -d && cd -
```

Инициализируем шарды
```shell
cd mongo-sharding-repl-cache && ./scripts/init.sh && cd -
```

Приложение доступно по адресу http://localhost:8080/

Останавливаем приложение
```shell
cd mongo-sharding-repl-cache && docker compose down && cd -
```


