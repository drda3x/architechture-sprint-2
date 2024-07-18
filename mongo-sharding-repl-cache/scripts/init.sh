#!/bin/bash

echo "INIT configSrv"
docker compose exec -T configSrv mongosh <<EOF
rs.initiate(
  {
    _id : "config_server",
       configsvr: true,
    members: [
      { _id : 0, host : "configSrv:27017" }
    ]
  }
);
exit();
EOF


echo "INIT shard1"
docker compose exec -T shard1_master mongosh <<EOF
rs.initiate(
  {
    _id : "shard1",
    members: [
      { _id : 0, host : "shard1_master:27017" },
      { _id : 1, host : "shard1_slave1:27017" },
      { _id : 2, host : "shard1_slave2:27017" },
      { _id : 3, host : "shard1_slave3:27017" }
    ]
  }
);
exit();
EOF

echo "INIT shard2"
docker compose exec -T shard2_master mongosh <<EOF
rs.initiate(
  {
    _id : "shard2",
    members: [
      { _id : 0, host : "shard2_master:27017" },
      { _id : 1, host : "shard2_slave1:27017" },
      { _id : 2, host : "shard2_slave2:27017" },
      { _id : 3, host : "shard2_slave3:27017" }
    ]
  }
);
exit();
EOF

echo "Fill database"
docker compose exec -T mongos_router mongosh --port 27017 <<EOF

sh.addShard( "shard1/shard1_master:27017");
sh.addShard( "shard2/shard2_master:27017");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } )

use somedb

for(var i = 0; i < 1000; i++) db.helloDoc.insert({age:i, name:"ly"+i})

db.helloDoc.countDocuments() 
exit();
EOF
