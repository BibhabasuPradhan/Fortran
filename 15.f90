!playing with strings


program fifteen
implicit none

character(*),parameter :: l = "Thequickbrownfoxjumpedoverthelazydog"
integer :: a,b,d
character :: str = "J"  ,c


write(*,'(a)', advance="no") "Enter ""a"" value: "
read(*,*)a

b = len(l)
c = achar(a)
d = iachar(str)

write(*,'(a,2x,i2.2)') "Length of string is:",b
write(*,*)c
write(*,*)d

end program fifteen
