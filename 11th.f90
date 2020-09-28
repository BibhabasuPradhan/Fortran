!11th

program eleven
implicit none

integer :: month
write (*,*) "Enter month (1-12): "
read (*,*) month

do 

	if (month >= 1 .and. month <= 12) exit
	write (*,*) "Error, month must be between 1 and 12."
	write (*,*) "Please re-enter."
	
end do

if (month >= 1 .and. month <= 12) then
write(*,*)'Valid month entered'
end if
end program eleven

