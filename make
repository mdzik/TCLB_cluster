#/bin/bash

PP=$(dirname $0)
[ -f $PP/conf.ini ] || $PP/config
[ -f $PP/conf.ini ] || exit -1
. $PP/conf.ini

srun -p plgrid-testing --cpus-per-task=24 -A $GRANT "/bin/bash -l &&  make -j 24 $@"
