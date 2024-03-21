      program int
      implicit none
      real(8) :: pint,p
      print *, '          n         ', 'Trapezoidal             ',
     &  'Simpson                      ', 'EV                    ',
     &  'Error(T)                  ', 'Error (S)'
      p = pint(50)
      p = pint(100)
      p = pint(500)
      p = pint(1000)
      end

      function pint(n)
      implicit none
      integer :: i,n
      real(8) :: pint,tr,si,x1,x2,x3,h,f,a,b,ip
      a = 0.
      b = 3.
      tr = 0.
      si = 0.
      h=(b-a)/n
      x1 = a
      do i = 1,n
      x2 = x1+h
      tr = tr+(f(x1)+f(x2))
      if ((i/2)*2.ne.i) then
      x3 = x2+h
      si = si+(f(x1)+4.*f(x2)+f(x3))
      end if
      x1 = x1+h
      end do
      tr = tr*h/2.
      si = si*h/3.
      ip = log(cosh(b))-log(cosh(a))
      print*,n,tr,si,ip,abs((ip-tr)/ip),abs((ip-si)/ip)
      end

      real(8) function f(x)
      implicit none
      real(8) :: x
      f = tanh(x)
      end
