      program hello_omp

      use, intrinsic :: iso_fortran_env
      implicit none

      integer :: number_of_threads, thread_id
      integer :: omp_get_num_threads, omp_get_thread_num

!$omp parallel private(thread_id)
      thread_id = omp_get_thread_num()
!$omp master
      number_of_threads = omp_get_num_threads()      
!$omp end master
!$omp barrier
      write(unit=output_unit, fmt=*) "hello, shared memory&
         & world from thread ", thread_id, " of ",&
         & number_of_threads
!$omp end parallel

      stop
      end program
