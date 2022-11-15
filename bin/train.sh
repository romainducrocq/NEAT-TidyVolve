#!/bin/bash

./build.sh -R
./compile.sh
./run.sh -m train -p plt -s sav
