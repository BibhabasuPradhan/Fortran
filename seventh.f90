!seventh program

program seven
implicit none

real :: a,b,c
real :: disc,root1,root2

write(*,*) 'Enter the coefficients of the quadratic equation'
read(*,*) a,b,c

disc = b**2.0 - 4.0*a*c

if (disc == 0) then
	root1 = -b / (2.0 * a)
	write(*,*) 'This equation has only one real root: '
	write(*,*)'root = ',root1
else if (disc > 0) then
	root1 = (-b + sqrt(b**2.0 - 4.0*a*c)) / (2.0 * a)
	root2 = (-b - sqrt(b**2.0 - 4.0*a*c)) / (2.0 * a)
	write(*,*) 'This equation has real roots: '
	write(*,*)'Root 1 = ',root1 ,'Root 2 = ',root2
else 
	root1 = -b / (2.0 * a)
	root2 = sqrt(abs(disc)) / (2.0 * a)
	write (*,*) "This equation has complex roots:"
	write (*,*) "Root 1 = ", root1, "+i", root2
	write (*,*) "Root 2 = ", root1, "-i", root2
end if

end program seven
