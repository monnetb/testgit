#!/bin/bash

#host_date=`hostname`_`date +"%Y%m%d.%H%M%S"`
#JOBID=${SLURM_JOB_ID:$host_date}

#nvidia-smi --query-gpu=timestamp,index,name,temperature.gpu,utilization.gpu,utilization.memory,memory.total,memory.free,memory.used,power.draw, --format=csv -l 10 |& tee  $1
nvidia-smi --query-gpu=timestamp,index,temperature.gpu,utilization.gpu,utilization.memory,memory.used,power.draw, --format=csv -l 1 &>  $1
