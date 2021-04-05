defmodule Extensions do
  import DateTime
  #import Hound.Helpers.Mouse
  import Hound.Helpers.Element
  import Hound.Helpers.Page

  def wait_for_selector?(selector, timeout_seconds \\ 10) do
    wait_for_selector_prime?(selector, DateTime.add(DateTime.utc_now(), timeout_seconds))
  end
  def wait_for_selector_prime?(selector, cap) do
    if compare(DateTime.utc_now(), cap) != :lt do
      (element_exists?(selector) and element_displayed?(selector))
    else
      if (element_exists?(selector) and element_displayed?(selector)) do
        true
      else
        :timer.sleep(500)
        wait_for_selector_prime?(selector, cap)
      end
    end
  end

  def element_exists?(selector) do
    match?({:ok, _}, search_element(elem(selector, 0), elem(selector, 1)))
  end

  def find_element(selector_tuple) do
    Hound.Helpers.Page.find_element(elem(selector_tuple, 0), elem(selector_tuple, 1))
  end

  # # Doesn't work.
  # def drag_and_drop(element, to_element) do
  #   move_to(element, 10, 10)
  #   mouse_down()
  #   move_to(to_element, 10, 10)
  #   mouse_up()
  # end

end
