help([[
loads hafs_tracker modulefile and related set environment variables
]])

prepend_path("MODULEPATH", "/lustre/save/spack-stack/envs/ubuntu20-intel2022.2-override-openmpi-v2/install/modulefiles/Core")
prepend_path("MODULEPATH", "/lustre/save/spack-stack/envs/ubuntu20-intel2022.2-override-openmpi-v2/install/modulefiles/")

load("stack-intel/2021.6.0")
load("stack-openmpi/4.1.5")

-- jpeg_ver=os.getenv("jpeg_ver") or "9.1.0"
-- load(pathJoin("jpeg", jpeg_ver))
load("jasper/2.0.25")
load("zlib/1.2.11")
load("libpng/1.6.37")
load("hdf5/1.10.6")
load("netcdf-c/4.7.4")
load("netcdf-fortran/4.5.4")
load("bacio/2.4.1")
load("g2/3.4.5")
load("g2tmpl/1.10.2")
load("w3emc/2.9.2")
load("w3nco/2.4.1")
load("sigio/2.3.2")

setenv("CMAKE_C_COMPILER", "mpicc")
setenv("CMAKE_CXX_COMPILER", "mpicxx")
setenv("CMAKE_Fortran_COMPILER", "mpifort")
setenv("CMAKE_Platform", "axiom.intel")

whatis("Description: HAFS Application environment")
