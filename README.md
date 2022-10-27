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
selecting data...
50000005000000
Normal column
.9706242
Columnar column
.0067868
```

```python
$ python3 test.py
50000005000000
0.43842446999997264
```

## NYTAXI 
```
$ docker-compose exec iris iris session iris -U NYTAXI loadtaxi
```
大きなサイズを試したければ、下記(2020年全体のYellow Taxi Trip Dataの取得)を実行。  
データ提供元は[こちら](https://data.cityofnewyork.us/Transportation/2020-Yellow-Taxi-Trip-Data/kxp8-n2sj)。

```
$ curl https://data.cityofnewyork.us/api/views/kxp8-n2sj/rows.csv?accessType=DOWNLOAD -o isc-taxi-demo/data/2020_Yellow_Taxi_Trip_Data.csv
$ docker-compose exec iris iris session iris -U NYTAXI loadtaxi
```

2.3GBほどの大きさです。
```
$ wc 2020_Yellow_Taxi_Trip_Data.csv
  24648500  123242496 2394264201 2020_Yellow_Taxi_Trip_Data.csv
```


