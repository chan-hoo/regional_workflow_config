#!/bin/bash 

./run_experiments.sh expts_file="my_expts.txt" machine=hera account="fv3-cam" use_cron_to_relaunch=TRUE cron_relaunch_intvl_mnts=05 >& we2e.log &
