module geometry_base
   implicit none
   private

   public :: t_point
   type :: t_point
      real :: x
      real :: y
   end type t_point

   public :: t_geometry
   type, abstract :: t_geometry
   contains
      procedure(area_interface), deferred :: area
   end type t_geometry

   abstract interface
      function area_interface(self) result(res)
         import t_geometry
         class(t_geometry), intent(in) :: self
         real :: res
      end function area_interface

      function centroid_interface(self) result(res)
         import t_geometry
         import t_point
         class(t_geometry), intent(in) :: self
         type(t_point) :: res
      end function centroid_interface

      function amoi_yy(self) result(res)
         import t_geometry
         class(t_geometry), intent(in) :: self
         real :: res
      end function amoi_yy
   end interface

end module geometry_base
