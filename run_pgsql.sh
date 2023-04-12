
docker run -p 5432:5432 \
-e POSTGRES_USER=fastladder \
-e POSTGRES_DB=fastladder \
-e POSTGRES_PASSWORD=fastladder \
-e POSTGRES_INITDB_ARGS=--encoding=UTF-8 \
postgres:15
