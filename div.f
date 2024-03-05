      program divided
      implicit none
      integer :: i,j,n
      real :: xi,fi,cf
      real,allocatable,dimension(:) :: x,f
      real,allocatable,dimension(:,:) :: dd
      n = 6
      allocate(x(n),f(n),dd(n,n+1))
      x = [1.0,1.1,1.3,1.6,1.7,2.0]
      f = [2.718,3.004,3.669,4.953,5.474,7.389]
      ! f = exp(x)
      do i = 1,n
      dd(i,1) = x(i)
      dd(i,2) = f(i)
      end do
      do j = 3,n+1
      do i = 1,n-j+2
      dd(i,j) = (dd(i+1,j-1)-dd(i,j-1)) / (x(i+j-2)-x(i))
      end do
      end do

      print*, '      x               ', 'f(x)               ',
     &  'd1               ', 'd2               ',
     &  'd3               ', 'd4               ', 'd5'
      do i = 1,n
      print*, dd(i,:) 
      end do

      print*, 'Enter the value of x:'
      read*, xi
      fi = f(1)
      do i=3,n+1
      cf=1.0
      do j=1,i-2
      cf = cf*(xi-x(j))
      end do
      fi = fi+cf*dd(1,i)
      end do
      print *, 'Exact value =', exp(xi)
      print *, 'Interpolated value =', fi
      end
