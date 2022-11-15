#!/bin/bash

./build.sh -R
./compile.sh
./run.sh -m eval -e 10 -n 0 -s sav
