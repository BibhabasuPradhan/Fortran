program factorial
implicit none 

integer :: factorial,k,i

factorial = 1
k = 5
do i = 1,k
	factorial = factorial * i
end do
print*,'Factorial is ',factorial
end program factorial
