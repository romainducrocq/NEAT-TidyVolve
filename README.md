# [C++] Topologies I Dunno Yet, eVolve
## > TidyVolve: My very own NEAT framework in C++ (it's neat & tidy) <

- The NeuroEvolution of Augmenting Topologies (NEAT) User Page: http://www.cs.ucf.edu/~kstanley/neat.html
- MarI/O - Machine Learning for Video Games (SethBling): https://www.youtube.com/watch?v=qv6UVOQ0F44 

****

## Examples

- NEAT XOR: https://github.com/romainducrocq/NEAT-XOR

****

## How to _

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

`cd bin && ./app.sh`

```
-------------------------------TRAIN-------------------------------

Time: 1049.4ms

log/plots/
```

```
-------------------------------EVAL--------------------------------

Time: 0.309975ms
```

****

## Docs

### 1. Model

`include/env/env/`  
`src/env/env/`  
- 1.1. implement model

`res/`  
- 1.2. add resources

### 2. Control

`include/env/env.hpp`  
- 2.1. add include
- 2.2. declare _model_ struct

`src/env/env.hpp`  
- 2.3.  define _initialization_ function
- 2.4.  define _observation_ function
- 2.5.  define _action_ function
- 2.6.  define _is done_ function
- 2.7.  define _fitness_ function
- 2.8.  define _information_ function
- 2.9.  define _no operation_ function
- 2.10. define _reset_ function
- 2.11. define _step_ function
- 2.12. define _reset render_ function
- 2.13. define _step render_ function

### 3. View

`include/env/view.hpp`  
- 3.1. add include
- 3.2. declare _event state_ struct
- 3.3. declare _draw_ variables
- 3.4. declare _draw_ functions

`src/env/view.cpp`  
- 3.5. define _event setup_ function
- 3.6. define _get action_ function
- 3.7. define _draw setup_ function
- 3.8. define _draw loop_ function

### 4. Tests

`test/include/`  
`test/src/`  
- 4.1. implement tests

### 5. Parameters

`include/env/conf.hpp`  
- 5.1. declare _actions_ enum
- 5.2. declare _optional_ parameters
- 5.3. define _argv cmds_ commands
- 5.4. define _help error_ message
- 5.5. define _optional_ commands
- 5.6. define _params_ parameters
- 5.7. define _optional_ parameters

```
HYPERPARAMETERS DEFAULT VALUES:


INPUTS               = 2
OUTPUTS              = 1

LIM_HIDDEN           = 1000000

MUTATE_WEIGHT_RATE   = 0.1f
MUTATE_GENE_RATE     = 0.25f
MUTATE_LINK_RATE     = 2.f
MUTATE_BIAS_RATE     = 0.4f
MUTATE_NEURON_RATE   = 0.5f
MUTATE_ENABLE_RATE   = 0.2f
MUTATE_DISABLE_RATE  = 0.4f
MUTATE_OFFSET_SIZE   = 0.1f
MUTATE_RATE_DECAY    = 0.995f

DELTA_DISJOINT       = 2.f
DELTA_WEIGHTS        = 0.4f
DELTA_THRESHOLD      = 1.f

CROSSOVER_PROB       = 0.75f
STALE_SPECIES        = 15
POPULATION_SIZE      = 10
MAX_POPULATION_SIZE  = 150
POPULATION_GENS_INC  = 200
POPULATION_INC_FREQ  = 10

ACT_REPEAT           = 1
MAX_NOOP             = 30
MVG_AVG              = 20

GENERATIONS_TRAIN    = 300
EPOCHS_EVAL          = 10
MAX_STEP             = 1000
```

@romainducrocq
