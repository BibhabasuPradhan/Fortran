!Array Self-Populating
!C:\fortran> gfortran -fcheck=bounds -o hw hw.f95



program arraypopulating
implicit none

integer,dimension(:),allocatable :: times
integer :: i,k,allst,t
integer :: s = 1

write(*,'(a)',advance="no")"Enter k value: "
read(*,*)k
allocate(times(k),stat=allst)

do i = 1,k
	times(i) = s * i                   !populating the vector/array
end do
write(*,'(a)')"The self populated array: "
write(*,*) times

write(*,*)"Want to know the value of which index: "
read(*,*)t

write(*,*)times(t)

end program arraypopulating
	
