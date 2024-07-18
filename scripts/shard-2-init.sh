
docker compose exec -T shard2 mongosh <<EOF
rs.initiate(
  {
    _id : "shard2",
    members: [
      { _id : 0, host : "shard2:27017" }
    ]
  }
);
exit();
EOF
