# Шардирование
После запуска приложение будет доступно по адресу http://localhost:8080/

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

# Репликация
После запуска приложение будет доступно по адресу http://localhost:8080/

Запускаем контейнеры
```shell
cd mongo-sharding-repl && docker compose up -d && cd -
```

Инициализируем шарды
```shell
cd mongo-sharding-repl && ./scripts/init.sh && cd -
```

Останавливаем приложение
```shell
cd mongo-sharding-repl && docker compose down && cd -
```

# Кеширование
После запуска приложение будет доступно по адресу http://localhost:8080/

Запускаем контейнеры
```shell
cd mongo-sharding-repl-cache && docker compose up -d && cd -
```

Инициализируем шарды
```shell
cd mongo-sharding-repl-cache && ./scripts/init.sh && cd -
```

Останавливаем приложение
```shell
cd mongo-sharding-repl-cache && docker compose down && cd -
```


