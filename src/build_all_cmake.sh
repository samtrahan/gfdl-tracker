#!/bin/sh

set -eux
source ./machine-setup.sh > /dev/null 2>&1


module use ../modulefiles
module load $target
module list


if [ $target = hera ]; then
  export FC=ifort
  export F90=ifort
  export CC=icc
elif [ $target = orion ]; then
  export FC=ifort
  export F90=ifort
  export CC=icc
elif [ $target = jet ]; then
  export FC=ifort
  export F90=ifort
  export CC=icc
elif [ $target = axiom ]; then
  export FC=ifort
  export F90=ifort
  export CC=icc
elif [ $target = wcoss2 ] ; then
  export FC=ftn
  export F90=ftn
  export CC=icc
else
  echo "Unknown machine = $target"
  exit 1
fi

cd ..
if [ -d "build" ]; then
   rm -rf build
fi
mkdir build
cd build
cmake .. -DCMAKE_Fortran_COMPILER=ifort -DCMAKE_C_COMPILER=icc -DCMAKE_BUILD_TYPE=${BUILD_TYPE}
make -j 8 VERBOSE=1
make install

cd ..

exit
