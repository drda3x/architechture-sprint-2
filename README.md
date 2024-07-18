# Шардирование
## Как запустить
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
