# magnus-.*

echo "Running on Magnus."

fix RUN_COMMAND "srun"
fix DEBUGQ "debugq"
fix MAINQ "workq"
fix RUN_GPU "n"
def MODULES_RUN "PrgEnv-gnu"
fix MODULES_BASE "-PrgEnv-cray"
def CONFOPT "--disable-cuda --with-cpp-flags='-O2' CXX=CC CC=cc"
fix MAX_UNITS_PER_NODE 24
fix CORES_PER_UNIT 1
fix CORES_PER_UNIT_FULL 1
fix MODULES_ADD ""
fix PREPARE "ulimit -S -s 81920"
def RHOME "$(echo /opt/R/*/bin/R | cut -f 1 -d ' ' | sed 's|bin/R||')"
