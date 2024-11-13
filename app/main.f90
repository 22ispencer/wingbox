program main
   use geometry_rect, only: t_rect
   implicit none

   type(t_rect) :: rect
   real :: area
   rect = t_rect(0, 0, 4, 4)

   area = rect%amoi_yy()

   print *, area

end program main
