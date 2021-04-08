#!/bin/bash
#BSUB -P RRFS-T2O
#BSUB -eo c768.err
#BSUB -oo c768.out
#BSUB -J fv3.c768
#BSUB -W 00:15
#BSUB -q debug
#BSUB -n 896
#BSUB -R span[ptile=24]
#BSUB -R affinity[core(1)]
#
set -eux

export BASEDIR=/gpfs/dell2/emc/modeling/noscrub/$LOGNAME
export WORKDIR=$BASEDIR/debug_iclbc/test_fcstabort

set +x
source ./module-setup.sh
module use $( pwd -P )
module load modules.fv3
module list
set -x

export OMP_NUM_THREADS=4
export KMP_AFFINITY=scatter
export OMP_STACKSIZE=2048m

export EXEC=$BASEDIR/ufs-weather-model/tests
#export EXEC=$BASEDIR/ufs_test/ufs-weather-model/tests
#export EXEC=$BASEDIR/test/ufs-weather-model/tests

cd $WORKDIR

rm -f c768.err
rm -f c768.out
rm -f outtest
rm -f errtest
rm -f time_stamp.out
rm -f core*
rm -f phyf*
rm -f dynf*
rm -f logf*
rm -f fv3_gfs.x

cp $EXEC/fv3_32bit.exe fv3_gfs.x
mpirun -l -n 896 ./fv3_gfs.x 1>outtest 2>errtest
