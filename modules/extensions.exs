defmodule Extensions do
  import DateTime
  import Hound.Element
  import Hound.Helpers.Mouse
  import Hound.Helpers.Element
  import Hound.Helpers.Page

  def wait_for_selector?(selector, timeout_seconds \\ 10) do
    wait_for_selector_prime?(selector, DateTime.add(DateTime.utc_now(), timeout_seconds))
  end
  def wait_for_selector_prime?(selector, cap) do
    if compare(DateTime.utc_now(), cap) != :lt do
      element?(selector) and element_displayed?(selector)
    else
      :timer.sleep(500)
      (element?(selector) and element_displayed?(selector)) or wait_for_selector_prime?(selector, cap)
    end
  end

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
