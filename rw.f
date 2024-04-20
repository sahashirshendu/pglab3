      program rw
      implicit none
      integer :: i,j,n,ns,q
      parameter(n=100,ns=10000)
      integer :: p(2*n+1),x(ns)
      real :: rp
      p=0
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
      do i=1,2*n+1
      p(i)=count(x.eq.(i-n-1))
      write(5,*)i-n-1,p(i)
      end do
      end
