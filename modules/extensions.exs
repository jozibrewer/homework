defmodule Extensions do
  import Hound.Helpers.Mouse
  import Hound.Helpers.Element
  import Hound.Helpers.Page

  def drag_and_drop(element, to_element) do
    move_to(element, 10, 10)
    mouse_down()
    move_to(to_element, 10, 10)
    mouse_up()
  end

  def drag_to(element, to_element) do
    move_to(element, 10, 10)
    mouse_down()
    move_to(to_element, 10, 10)
  end

end
