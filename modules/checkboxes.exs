defmodule Checkboxes do
  import Hound.Helpers.Page

  def first_checkbox() do
    find_element(:css, "form > input:nth-of-type(1)")
  end

  def second_checkbox() do
    find_element(:css, "form > input:nth-of-type(2)")
  end

end
