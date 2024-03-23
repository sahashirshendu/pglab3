      program wavefunc
      parameter(n=250)
      real :: wf(n)
      e = -1.5
      wf(1) = 0.
      wf(2) = 1.
      l = 0.
      t = 1.
      do i = 2,n-1
      wf(i+1) = (e-l)/t*wf(i)-wf(i-1)
      end do

      open(10,file='wave.txt')
      do i = 1,n
      write(10,*)i,abs(wf(i))**2
      end do
      end
