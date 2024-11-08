module wingbox
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, wingbox!"
  end subroutine say_hello
end module wingbox
