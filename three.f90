!Module
module constants
implicit none

	real,parameter :: pi = 3.14159
	real,parameter :: e = 2.71828

contains
	subroutine show_constant()
		print*, "Pi = ",pi
		print*, "e = ",e
	end subroutine show_constant

end module constants

!Start of program

program three

use constants				!Invoking Module
implicit none

	real :: x, epowerx, area, radius
	
	x = 2.0
	radius = 7.0
	epowerx = e**x
	area = pi * radius**2
	
	call show_constant()
	
	print*, "e raised to the power of 2.0 = ", epowerx
	print*, "area of a circle with radius 7.0 = ",area

end program three
