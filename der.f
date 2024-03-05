      program differentiation
      implicit none
      real :: printd,p
      print *, '      h               ', 'EV               ',
     &  'FD               ', 'CD               ',
     &  'ERRFD               ', 'ERRCD'
      p=printd(0.3,0.1)
      p=printd(0.3,0.05)
      p=printd(0.3,0.025)
      end

      function printd(x,h)
      implicit none
      real :: ev,cnt,fwd,f,x,h,printd
      ev = (1-x/2)*exp(-x/2)
      cnt = (f(x+h)-f(x-h))/(2*h)
      fwd = (f(x+h)-f(x))/h
      print*,h,ev,fwd,cnt,abs(fwd-ev),abs(cnt-ev)
      end

      function f(x)
      implicit none
      real :: x,f
      f = x*exp(-x/2)
      end
