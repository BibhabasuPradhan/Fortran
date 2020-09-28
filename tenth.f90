!tenth program

program factorial
implicit none 

integer :: fact,k,i

fact = 1
write(*,'(a)',advance = "no")'Enter the number whose factorial you want to find: '
read(*,*) k

do i = 1,k
	fact = fact * i
end do
print*,'Factorial is ',fact
end program factorial



