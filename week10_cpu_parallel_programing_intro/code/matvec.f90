! ======================================================================
! NAME
!
!     matvec.f90 - matrix-vector multiplication (fortran)
!
! DESCRIPTION
!
!     Performs a serial matrix-vector multiplication (y=Ax) operation 
!     between a Hilbert matrix (A) and an all-ones vector (x) of 
!     dimension n in Fortran. The resultant vector (y) is checked by 
!     computing the sum of its elements.
!
! USAGE
!
!     gfortran -O3 -fdefault-real-8 matvec.f90 -o matvec.x
!     time -p ./matvec.x 32768
!
! AUTHOR
!
!     Marty Kandes, Ph.D.
!     Computational & Data Science Research Specialist
!     High-Performance Computing User Services Group
!     San Diego Supercomputer Center
!     University of California, San Diego
!
! COPYRIGHT
!     
!     Copyright (c) 2019 Martin Charles Kandes 
!
! LAST UPDATED
!
!     Wednesday, May 1st, 2019
!
! ----------------------------------------------------------------------
      program matvec

!     load standard iso_fortran_env module
      use, intrinsic :: iso_fortran_env

!     disable implicit variable types
      implicit none

!     declare character-valued input buffer variable that will be 
!     utilized to read in matrix and vector dimension n from command-line
      character(19) :: buffer

!     declare integer-valued variables that will be utilized to store:
!     length and info variables for get_command_argument subroutine; 
!     loop indicies i, j; matrix and vector dimension n
      integer :: length, info
      integer :: i, j, n

!     declare real-valued variables that will store sum of y results to 
!     validate output from matrix-vector multiplication
      real :: ysum, ysum_true

!     declare real-valued arrays that will be utilized to store vectors
!     x, y and matrix A
      real, allocatable, dimension(:) :: x, y
      real, allocatable, dimension(:,:) :: A

!     read in the matrix and vector dimension n from command-line
      call get_command_argument(1, buffer, length, info)
      read(unit=buffer, fmt=*) n

!     allocate memory for one- and two-dimensional arrays used to store 
!     vectors x, y and matrix A
      allocate(x(n))
      allocate(y(n))
      allocate(A(n,n))

!     initialize the one-dimensional array x as an all-ones vector of 
!     dimension n 
      do i = 1, n
         x(i) = 1.0
      end do

!     initialize the one-diemnsional array y as an all-zeros vector of 
!     dimension n
      do i = 1, n
         y(i) = 0.0
      end do 

!     initialize the two-dimensional array A as the Hilbert matrix of 
!     dimension n
      do j = 1, n 
         do i = 1, n
            A(i,j) =  1.0 / (float(i) + float(j) - 1.0) 
         end do
      end do

!     perform matrix-vector multiplication y = Ax
      do j = 1, n
         do i = 1, n
            y(i) = y(i) + A(i,j) * x(i)
         end do
      end do

!     compute sum of y to check result of matrix-vector multiplication
      ysum = 0.0
      do i = 1, n
         ysum = ysum + y(i)
      end do

!     write sum of y to standard output
      write(unit=output_unit, fmt=*) 'ysum = ', ysum

!     compute the analytic result for the sum of y to compare against 
!     the result computed from matrix-vector multiplication
      ysum_true = float(n)
      do i = 1, n - 1
         ysum_true = ysum_true + float(n-i) / float(n+i)
      end do

!     write analytic result for the sum of y to standard output
      write(unit=output_unit, fmt=*) 'ysum_true = ', ysum_true

!     deallocate memory utilized for the one- and two-dimensional arrays 
!     used to store vectors x, y and matrix A
      deallocate(A)
      deallocate(y)
      deallocate(x)

      stop

      end program matvec
! ======================================================================
