program six
! Program to calculate the period of a pendulum

implicit none
real :: angle, length, pperiod, alpha

real, parameter :: gravity=980.0, pi=3.14159
! display initial header
write (*,*) "Pendulum Period Calculation Program"
write (*,*)
! prompt for and read the length and angle values
write (*,*) "Enter Length and Angle values:"
read (*,*) length, angle
! convert degrees to radians
alpha = angle * pi / 180.0
! calculate the period
pperiod = 2.0 * pi * sqrt(length/gravity) * ( 1.0 + 1.0/4.0 * sin(alpha/2.0)**2 )
! display the results
write (*,*) "The period is:", pperiod
end program six
