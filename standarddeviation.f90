!Standard deviation of an array of numbers.

program seventeen
implicit none

integer :: j,k,allstat
real :: s = 0.0,average,stdsum = 0.0,std
integer,dimension(:),allocatable :: numbers

write(*,'(a)', advance = "no")"Enter total number of data points: "
read(*,*)k

allocate (numbers(k),stat=allstat)

do j = 1,k
	
	s = s + j


average = s/k

end do

do j = 1,k
	stdsum = stdsum + (average - numbers(j))**2.0
end do

std = sqrt(stdsum/(real(k)-1))

write(*,'(a,x,f8.2,2x)', advance = "no")"Average is:",average
write(*,'(a,x,i5,2x)', advance = "no")"Minimum number is:",minval(numbers)
write(*,'(a,x,i5,2x)', advance = "no")"Maximum number is:",maxval(numbers)
write(*,'(a,x,f8.2)', advance = "no")"Standar deviation is:",std

end program seventeen
