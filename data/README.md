Data taken from https://github.com/Altinity/tpc-ds/tree/master/data

To unzip the split archives, run the following in this directory:

```
cat *.zip.00* > data.zip
unzip data.zip
```

DuckDB didn't like the input for `customer_001.dat` table due to non-utf8 characters.
To strip non-utf8 characters, run:

```
iconv -f utf-8 -t utf-8 -c customer_001.dat > customer_001.dat.utf8
```

