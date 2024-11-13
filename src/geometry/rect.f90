module geometry_rect
   use geometry_base, only: t_geometry, t_point
   implicit none
   private

   public :: t_rect
   type, extends(t_geometry) :: t_rect
      real :: x
      real :: y
      real :: base
      real :: height

   contains
      procedure :: area
      procedure :: centroid
      procedure :: amoi_yy
   end type t_rect

contains

   pure function area(self) result(res)
      class(t_rect), intent(in) :: self
      real :: res

      res = self%base*self%height
   end function area

   pure function centroid(self) result(res)
      class(t_rect), intent(in) :: self
      type(t_point) :: res

      res = t_point(self%x, self%y)
   end function centroid

   pure function amoi_yy(self) result(res)
      class(t_rect), intent(in) :: self
      real :: res

      res = self%base*self%height**3/12
   end function amoi_yy

end module geometry_rect
