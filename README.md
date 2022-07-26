# iris-columnar

```
$ ./start.sh
```

## super simple one
```
$ docker-compose exec iris iris session iris -U MYAPP test
global  allocatedMB     usedMB
^poCN.yKvi.1    128     115
^poCN.yKvi.1.V1 40      40
^poCN.yKvi.2    0.008   0.002
^poCN.yKvi.S
total   168.008 155.002

5 Rows(s) Affected
50000005000000
1.0191874
.0132209
```

```python
$ python3 test.py
0.48461853499611607
50000005000000
```

## NYTAXI 
Get 2020 Yellow Taxi Trip Data from https://data.cityofnewyork.us/Transportation/2020-Yellow-Taxi-Trip-Data/kxp8-n2sj

```
$ curl https://data.cityofnewyork.us/api/views/kxp8-n2sj/rows.csv?accessType=DOWNLOAD -o isc-taxi-demo/data/2020_Yellow_Taxi_Trip_Data.csv
$ docker-compose exec iris iris session iris -U NYTAXI loadtaxi
```

