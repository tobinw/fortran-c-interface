# FORTRAN-C Interface
Working on proof-of-concept C-API callable from FORTRAN, currently uses ISO_C_BINDING and a FORTRAN module to describe the C-API. 

Still need to check out efficiency of the calls, including possibly LTO optimizations between the C compilation units and the FORTRAN compilation units. If it is possible to coerce the FORTRAN compiler to inline functions from a source object from C that would allow zero-cost inter-language API usage (no function call overhead).
