# [C++] Topologies I Dunno Yet, eVolve
## > TidyVolve: My very own NEAT framework in C++ (by & for myself) <

- The NeuroEvolution of Augmenting Topologies (NEAT) User Page: http://www.cs.ucf.edu/~kstanley/neat.html
- MarI/O - Machine Learning for Video Games (SethBling): https://www.youtube.com/watch?v=qv6UVOQ0F44 

****

## Examples

- NEAT-XOR: https://github.com/romainducrocq/NEAT-XOR

****

## Run

`cd bin`
- **Install**: `./make.sh` or  
```
sudo apt-get update
sudo apt-get install g++ cmake valgrind libgtest-dev

cd /usr/src/gtest
sudo cmake CMakeLists.txt
sudo make
sudo cp -v lib/*.a /usr/lib
```

- **Run**: `./app.sh` or  
```
./build.sh -R
./compile.sh
./run.sh -m train -p plt -s sav
./run.sh -m eval -s sav
```

### Train
- **Memcheck**: `./build.sh -D && ./compile.sh && ./memcheck.sh -m train -g 15`  
- **Debug**: `./build.sh -D && ./compile.sh && ./run.sh -m train -p plt -s sav`  
- **Release**: `./build.sh -R && ./compile.sh && ./run.sh -m train -p plt -s sav`  
or `./train.sh`  

### Eval
- **Release**: `./build.sh -R && ./compile.sh && ./run.sh -m eval -s sav`  
or `./eval.sh`  

### Play
- **Release**: `./build.sh -R && ./compile.sh && ./run.sh -m play`  
or `./play.sh`  

### Test
- **Release**: `./build.sh -R && ./compile.sh && ./run.sh -m test`  
or `./test.sh`  

```
usage: apps/exec [-h] [-m MOD] [-g GEN] [-e EPO] [-n NUM] [-p PLT] [-s SAV]

TidyVolve

optional args:
  -h      Print help and exit
  -m MOD  Set mode < train | eval | play | test >
  params:
  -g GEN  [train]       Set generation number (0=inf)
  -e EPO  [eval, play]  Set epoch number      (0=inf)
  -n NUM  [train, eval] Set max step number   (0=inf)
  utils:
  -p PLT  [train]       Set plot log file name
  -s SAV  [train, eval] Set save sav file name
```
> Hyperparameter configuration file: `include/env/conf.hpp`

****

## Demo

```
-------------------------------TRAIN-------------------------------

Time: 1049.4ms

-------------------------------EVAL--------------------------------

Time: 0.309975ms
```

****

## Docs

@romainducrocq
