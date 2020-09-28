program plotExample
implicit none
real, dimension(200) :: x, y
integer :: i, opnstat

do i = 1, 200
	x(i) = i * 0.05
	y(i) = sin(x(i)) * (1-cos(x(i)/3.0))
end do

open(14, file="data1.plt", status="replace", action="write", position="rewind",iostat=opnstat)
if (opnstat > 0) stop "error opening plot file."


do i=1,100
	write (14,*) x(i), y(i)
end do

write (14, '(a)') "end"
write (14, '(a)') "pause -1"
close(14)

end program plotExample
