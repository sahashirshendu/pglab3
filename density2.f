      program density
      complex :: t,f,e
      n = 101
      e0 = 2.5
      pi = 4.*atan(1.)
      open(10,file='density2.txt')
      do i = 0,n
      e = complex(-e0+i*2.*e0/n,0.001)
      f = 0.
      t = 1.
      do while (abs(t)>0.00001)
      t = t**2/(e-f)
      f = f+2*t
      end do
      g = -imag(1./(e-f))/pi
      write(10,*) real(e),g
      end do
      end
