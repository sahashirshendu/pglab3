      program divided
      real,allocatable,dimension(:) :: x,f
      real,allocatable,dimension(:,:) :: dd
      n = 6
      allocate(x(n),f(n),dd(n,n+1))
      x = [1.0,1.1,1.3,1.6,1.7,2.0]
      f = [2.718,3.004,3.669,4.953,5.474,7.389]
      do i = 1,n
      dd(i,1) = x(i)
      dd(i,2) = f(i)
      end do
      do j = 3,n+1
      do i = 1,n-j+2
      dd(i,j) = (dd(i+1,j-1)-dd(i,j-1)) / (x(i+j-2)-x(i))
      end do
      end do

      do i = 1,n
      print *, dd(i,:) 
      end do
      xi = 1.05
      print *, 'Value =', exp(xi)
      fi = f(1)+dd(1,3)*(xi-x(1))+dd(1,4)*(xi-x(1))*(xi-x(2))
      print *, 'Interpolated value =', fi
      end
