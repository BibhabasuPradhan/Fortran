!datecheck

program twelfth
implicit none

integer :: day,month,year,maxday

write(*,*)'Enter full date: '
read(*,*) day,month,year

do

	if (month<1 .or. month>12) then
	write(*,*) 'Invalid month'
	cycle
	end if

	if (year<1970 .or. year>2020) then
	write(*,*),'Invalid year'
	cycle
	end if

select case (month)
	case(1,3,5,7,8,10,12)
	maxday = 31
	case(2)
	if (mod(year,4)==0) then
	maxday = 29
	else
	maxday = 28
	end if
	case (4,6,9,11)
	maxday = 30
end select

	if (day<1 .or. day>maxday) then 
	write(*,*)'Invalid day'
	cycle
	end if
exit
end do
end program twelfth
