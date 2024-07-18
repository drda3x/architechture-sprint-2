
docker compose exec -T shard1 mongosh <<EOF
rs.initiate(
  {
    _id : "shard1",
    members: [
      { _id : 0, host : "shard1:27017" }
    ]
  }
);
exit();
EOF
