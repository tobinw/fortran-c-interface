#!/bin/bash

cmake .. \
      -DCMAKE_C_COMPILER=`which gcc` \
      -DCMAKE_Fortran_COMPILER=`which gfortran`
