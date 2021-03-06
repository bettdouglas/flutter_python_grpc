  
#!/bin/bash
set -e

psql -v ON_ERROR_STOP=0 --username postgres --dbname postgres <<-EOSQL
    DROP DATABASE alaska_features;
    CREATE DATABASE alaska_features;
EOSQL

psql -U postgres -d alaska_features -c 'CREATE EXTENSION IF NOT EXISTS POSTGIS'

for entry in *.shp;
do
    echo $entry
    
#	ogr2ogr -f "PostgreSQL" "PG:host=localhost user=dart dbname=dart_test password=mypassw0rd" "$entry" -lco GEOMETRY_NAME=geom -lco FID=gid -lco PRECISION=no -nlt PROMOTE_TO_MULTI -nln new_layername -overwrite
	tablename="$(basename -- $entry)"
	name=$(echo "$tablename" | cut -f 1 -d '.')
	# echo "$name"
    # psql -U postgres -c "DROP TABLE IF EXISTS $name"
	shp2pgsql -I -s 4326 $entry public."$name" | psql -v ON_ERROR_STOP=1 -U postgres -d alaska_features
done