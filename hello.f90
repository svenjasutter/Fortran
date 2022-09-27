program hello
  !use, intrinsic :: iso_fortran_env, only: sp=>real32, dp=>real64
  use, intrinsic :: iso_c_binding, only: sp=>c_float, dp=>c_double
  implicit none

  !gfortran hello.f90 -o hello to build the project
  !./hello to run the build project

  integer :: amount
  real :: pi
  complex :: frequency
  character :: initial
  logical :: isOkay
  integer :: age
  real(sp) :: float32
  real(dp) :: float64

  amount = 10
  pi = 3.1415927
  frequency = (1.0, -0.5)
  initial = 'A'
  isOkay = .false.

  print *, 'The value of amount (integer) is: ', amount
  print *, 'The value of pi (real) is: ', pi
  print *, 'The value of frequency (complex) is: ', frequency
  print *, 'The value of initial (character) is: ', initial
  print *, 'The value of isOkay (logical) is: ', isOkay

  print *, 'Please enter your age: '
  read(*,*) age

  print *, 'Your age is: ', age
    


  float32 = 1.0_sp  ! Explicit suffix for literal constants
  float64 = 1.0_dp

  print *, 'float32: ', float32
  print *, 'float64: ', float64

end program hello