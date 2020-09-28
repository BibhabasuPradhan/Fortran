!Monte Carlo Pi Estimation													!!probability of points which lie inside the circle
																			!are given by est pi = 4(no.of samples in circle/total no. of samples)

program eighteen
implicit none

integer :: counts,counter = 0,allstat,i,opnstat
real :: x,y,mcarlopi,pt
real,dimension(:,:),allocatable :: randoms

write(*,'(a)')"This program produces the probability estimation of a simple problem - refer question" 

do
	write(*,'(a,x)',advance = "no")"How many total samples do you want:"
	read(*,*)counts

	if (counts>=100 .and. counts<=1000000) exit
	write(*,'(a,/a)')"Counts entered is invalid","Please enter again"				!has to be between 100 and 1000000
	
end do

allocate(randoms(counts,2),stat = allstat)

if (allstat /= 0) then
	write(*,'(a,x,a,/a)')"Error","There is some error in allocating space","Program terminated"
	stop
end if

!generate points
call random_seed()
do i = 1,counts
	call random_number(x)
	call random_number(y)
	
	randoms(i,1) = x
	randoms(i,2) = y
end do

!The Monte Carlo Estimation!
									

do i = 1,counts
	pt = randoms(i,1)**2 + randoms(i,2)**2
	
	if (sqrt(pt)<1.0) counter = counter + 1                      !Now we know the total points lying inside the circle

end do

mcarlopi = 4.0*real(counter)/real(counts)



write(*,'(a,i7)')"Count of points: ",counts
write(*,'(a,f8.2)')"Monte Carlo pi estimation: ",mcarlopi

!Output data to a file

open(12,file="data.plt",status="replace",action="write",position="rewind",iostat=opnstat)
if(opnstat>0) stop "error open plot file"


do i = 1,100000
	write (12,*) randoms(i,1),randoms(i,2)
end do

write (12, '(a)') "end"
write (12, '(a)') "pause -1"

close(12)


open(16,file="circle.plt",status="replace",action="write",position="rewind",iostat=opnstat)
if(opnstat>0) stop "error open plot file"

do i = 1,78500
	randoms(i,1) = sqrt(1.0 - randoms(i,2)**2)										!should define a circle
	write(16,*) randoms(i,1),randoms(i,2)
end do
write (16, '(a)') "end"
write (16, '(a)') "pause -1"

close(16)

end program eighteen




	
