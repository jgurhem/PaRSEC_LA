module purge
module load cmake/3.9.4 intel/15.0.0 openmpi/2.1.2_intel15.0.0_tm hwloc/1.6.2_intel

export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/gpfshome/mds/staff/jgurhem/install/parsec/lib/pkgconfig
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/gpfshome/mds/staff/jgurhem/install/parsec/lib
export LIBRARY_PATH=${LIBRARY_PATH}:/gpfshome/mds/staff/jgurhem/install/parsec/lib
export C_INCLUDE_PATH=${C_INCLUDE_PATH}:/gpfshome/mds/staff/jgurhem/install/parsec/include:/gpfslocal/pub/hwloc/build_1.6.2_intel/include

export OMPI_MCA_shmem_mmap_enable_nfs_warning=0
