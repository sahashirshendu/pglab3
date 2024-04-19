      program gq
      implicit none
      real :: x1,x2,x3,u1,u2,u3,w1,w2,w3,a,b,intg
      integer :: i
      a=0.
      b=3.14159
      u1=-sqrt(3./5.)
      u2=0.
      u3=sqrt(3./5.)
      w1=5./9.
      w2=8./9.
      w3=5./9.
      x1=.5*(b-a)*u1+.5*(a+b)
      x2=.5*(b-a)*u2+.5*(a+b)
      x3=.5*(b-a)*u3+.5*(a+b)
      intg = .5*(b-a)*(w1*sin(x1)+w2*sin(x2)+w3*sin(x3))
      print*,"Integral = ",intg
      end program gq
