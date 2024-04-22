      program rw
      implicit none
      real :: rp
      integer :: i,j,n,ns,q
      parameter(n=100,ns=10000)
      integer :: x(ns)
      do i=1,ns
      q=0
      do j=1,n
      call random_number(rp)
      if (rp.gt.0.5) then
      q=q+1
      else
      q=q-1
      end if
      end do
      x(i)=q
      end do
      open(5,file='rw.txt')
      do i=1,2*n+1,2
      write(5,*)i-n-1,count(x.eq.(i-n-1))
      end do
      end
