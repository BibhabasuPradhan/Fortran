!Date to day



program fourteen
implicit none

integer :: day,month,year
integer :: d,y,m,t
character(9) :: dayinwords,amonth

write(*,*)"Date Formatter Program"
write(*,'(a)',advance="no")"Date(month,day,year): "
read(*,*) month,day,year

write(*,*)"************************************************"
write(*,'(a)',advance="no")"The date entered in universal format: "
write(*,'(3x,i2.2,a,i2.2,a,i4.4,a)') month,"/",day,"/",year,"."

!calculate day of week

t = (14 - month) / 12
y = year - t
m = month + 12 * t - 2

d = mod ( (day + y + y/4 - y/100 + y/400 + (31*m/12)), 7)

!Conversion of day of week in numbers to day of week in words

select case (d)
	case(0)
		dayinwords = "Sunday"
	case (1)
		dayinwords = "Monday"
	case (2)
		dayinwords = "Tuesday"
	case (3)
		dayinwords = "Wednesday"
	case (4)
		dayinwords = "Thursday"
	case (5)
		dayinwords = "Friday"
	case (6)
		dayinwords = "Saturday"
end select

!Conversion of months to month in words

select case (month)
	case(1)
		amonth = "January  "
	case (2)
		amonth = "February "
	case (3)
		amonth = "March    "
	case (4)
		amonth = "April    "
	case (5)
		amonth = "May      "
	case (6)
		amonth = "June     "
	case (7)
		amonth = "July     "
	case (8)
		amonth = "August   "
	case (9)
		amonth = "September"
	case (10)
		amonth = "October  "
	case (11)
		amonth = "November "
	case (12)
		amonth = "December "
end select

!display formatted date and day

write(*,'(a)') "Formatted Date: "
write(*,'(3x,a,x,a,x,a,x,i2.2,x,a,x,i4.4,a)') trim(dayinwords),",",trim(amonth),day,",",year,"."

end program fourteen




