!I/O formatting

program formatting
implicit none 

real :: var1 = 4.5, var2 = 12.0, var3 = 2145.5713
integer :: num1 = 42, num2 = 123, num3 = 4567
character(len=9) :: msg = "Bibhabasu"
character(len=10) ::  msg1 = "My name is"
write(*,'(i2)') num1              !for integer formatting, use i followed by the number of positions you want as width. 2 spaces implies two digits.

write(*,'(i2,i3)') num1,num2

write(*,'(i2,i7)') num1,num3

write(*,'(i5,i5,i5)') num1,num2,num3

write(*,'(i6.6)') num1             !In integer formatting, the number after point denotes the total number of digits you want. If digits you want is more than digits at input,
                                    ! it will add zeros to the front. The number before the i denotes the total width


write(*,'(f3.1)') var1              !In real formattng, use f followed by the number of positions you want as width which also includes the decimal point. The digits after the
                                    !decimal point are represented by a number after the point in the formatting. Here, it is 1, which implies only one decimal number after decimal. 

write(*,'(f7.2)') var1              !Here, it is 2, which implies it would add a zero to fill the second position after decimal. Mind that this is a digit counter not position.

write(*,'(f3.1,f7.1)') var1,var2     

write(*,'(a,4x,a)') "X","Y"          !Adds horizontal space = x between the two inputs. Value of space is given as 4.

write(*,'(a,t10,a)') "X","Y"         !Adds a huge space. This is known as a tab-->t. Often used to move across coloumns. Tab jump here = 10.

write(*,'(a12)') msg                 !for character formatting, use a followed by the number of positions you want as width (must include the size of your string)

write(*,'(a9)') msg                   !just works like integers
 
write(*,'(a11,2x,a9)') msg1,msg        !Simple concatenation of strings.

end program formatting
