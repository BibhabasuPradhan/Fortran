!fourth program

program four
implicit none

integer :: radius
real,parameter :: pi = 3.14159
real:: area

write(*,*) "Enter radius of the circle"
read(*,*) radius

area = pi*radius**2

print*,'Area = ',area

end program four
