      program hello

      use, intrinsic :: iso_fortran_env
      implicit none

      write(unit=output_unit, fmt=*) "hello, world"

      stop
      end program
