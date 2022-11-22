#!/bin/sh

echo "km2_id,fake_mbu" > datafile.csv; for i in `seq 2000`; do echo -n "$i," >> datafile.csv; echo $(($RANDOM % 100)) >> datafile.csv; done
