hello: hello.c hello.f90
	gfortran hello.f90 -o hello.x

hello-omp: hello-omp.f90
	gfortran -fopenmp hello-omp.f90 -o hello-omp.x

matvec: matvec.f90
	gfortran -O2 -mtune=native -fdefault-real-8 matvec.f90 -o matvec.x

matvec-omp: matvec-omp.f90 
	gfortran -fopenmp -O2 -mtune=native -fdefault-real-8 matvec-omp.f90 -o matvec-omp.x

clean:
	rm *.x
