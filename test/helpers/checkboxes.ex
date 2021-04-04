defmodule Checkboxes do

  def first_checkbox, do: {:css, "form > input:nth-of-type(1)"}
  def second_checkbox, do: {:css, "form > input:nth-of-type(2)"}

end
