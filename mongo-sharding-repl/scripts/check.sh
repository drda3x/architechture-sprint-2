#!/bin/bash

docker compose exec -T shard1 mongosh <<EOF
use somedb;
db.helloDoc.countDocuments();
exit()
EOF

docker compose exec -T shard2 mongosh <<EOF
use somedb;
db.helloDoc.countDocuments();
exit()
EOF
