!fifth program

program five
implicit none

real :: a,b,c,perimeter

write(*,*) "Enter values of side A and B for the right-angled triangle"
read(*,*) a,b

c = sqrt(a**2 + b**2)
perimeter = a + b + c

print*,'C = ',c
print*,'Perimeter = ',perimeter

end program five
