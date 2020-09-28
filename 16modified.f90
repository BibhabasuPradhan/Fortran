program arraypopulating
implicit none

integer,dimension(:),allocatable :: times                                           !This is a tedious process. Quicker one is
integer :: i,k,allst,t																!integer, dimension(5) :: numbers = (/ (i, i=1,1000) /)
integer :: s = 1																    !

write(*,'(a)',advance="no")"Enter k value: "
read(*,*)k
allocate(times(k),stat=allst)

do i = 1,k
	times(i) = s * i                   !populating the vector/array
end do



write(*,*)"Want to know the value of which index: "
read(*,*)t

write(*,*)times(t)

write(*,'(a,x,a,x,i4.4,2x)',advance="no")"The maximum value in the array is","=", maxval(times)
write(*,'(a,x,a,x,i3.3,2x)',advance="no")"The minimum value in the array is","=", minval(times)
write(*,'(a,x,a,x,i7.7)',advance="no")"The sum of all values in the array is","=", sum(times)

end program arraypopulating
	
