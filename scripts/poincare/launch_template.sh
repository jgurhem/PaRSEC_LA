#@ class            = clallmds+
#@ job_name         = parsec-run
#@ total_tasks      = NCORES
#@ node             = NNODES
#@ wall_clock_limit = TIMEWALL
#@ output           = $(job_name).$(jobid).log
#@ error            = $(job_name).$(jobid).err
#@ job_type         = mpich
#@ environment      = COPY_ALL
#@ node_usage       = not_shared
#@ queue
#

. scripts/poincare/load_env.sh
rm -rf core.*
bash scripts/run_mpi.sh Poincare blockLU build/lu NNODES NCORES NBLOCKS DATASIZE BLOCKSIZE test_parsec_DATASIZE.json
