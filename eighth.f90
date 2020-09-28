!eighth program

program eight
implicit none

integer :: monthnumber, daysinmonth, year 						!Select cases dont accept real values

write(*,*)'Enter the month-number and corresponding year to know number of days in it: '
read(*,*)monthnumber,year

select case (monthnumber)
	case (1,3,5,7,8,10,12)
		daysinmonth = 31
	case (2)
	if (mod(year,4) == 0) then
		daysinmonth = 29
	else
		daysinmonth = 28
	end if
	case (4,6,9,11)
		daysinmonth = 30
	case default 
		write(*,*)'The month number enetered is invalid'
end select
	
print*,'days in entered month = ',daysinmonth

end program eight
