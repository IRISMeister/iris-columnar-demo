#!/bin/bash
# curl https://data.cityofnewyork.us/api/views/kxp8-n2sj/rows.csv?accessType=DOWNLOAD -o 2020_Yellow_Taxi_Trip_Data.csv

docker-compose up -d
docker-compose exec -T iris bash -c "\$ISC_PACKAGE_INSTALLDIR/dev/Cloud/ICM/waitISC.sh '' 120"
docker-compose exec -T iris iris session iris -U MYAPP < cos/initialize.cos
docker-compose exec -T iris iris session iris -U NYTAXI < cos/nytaxi.cos

# the 1st run
#docker-compose exec iris iris session iris -U MYAPP test
