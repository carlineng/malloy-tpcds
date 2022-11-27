Data taken from https://github.com/Altinity/tpc-ds/tree/master/data

```
cat *.zip.00* > data.zip
unzip data.zip
```

`customer_001.dat` had some non-utf8 characters.
Ran:

```
iconv -f utf-8 -t utf-8 -c customer_001.dat > customer_001.dat.utf8
```
