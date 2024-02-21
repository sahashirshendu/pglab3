      program divided
      real, allocatable, dimension(:) :: x,f,d1,d2,d3,d4,d5
      n = 6
      allocate(x(n),f(n))
      allocate(d1(n-1),d2(n-2),d3(n-3),d4(n-4),d5(n-5))
      x = [1.0,1.1,1.3,1.6,1.7,2.0]
      f = [2.718,3.004,3.669,4.953,5.474,7.389]
      do i = 1,n-1
      d1(i) = (f(i+1)-f(i))/(x(i+1)-x(i))
      end do
      do i = 1,n-2
      d2(i) = (d1(i+1)-d1(i))/(x(i+2)-x(i))
      end do
      do i = 1,n-3
      d3(i) = (d2(i+1)-d2(i))/(x(i+3)-x(i))
      end do
      do i = 1,n-4
      d4(i) = (d3(i+1)-d3(i))/(x(i+4)-x(i))
      end do
      do i = 1,n-5
      d5(i) = (d4(i+1)-d4(i))/(x(i+5)-x(i))
      end do
      do i = 1,n
      print*,x(i),f(i),d1(i),d2(i),d3(i),d4(i),d5(i)
      end do
      print*,exp(1.05)
      print*,f(1)+d1(1)*(1.05-x(1))+d2(1)*(1.05-x(1))*(1.05-x(2))
      end
