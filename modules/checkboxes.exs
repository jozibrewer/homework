defmodule Checkboxes do

  @first_checkbox_selector {:css, "form > input:nth-of-type(1)"}
  def first_checkbox, do: @first_checkbox_selector

  @second_checkbox_selector {:css, "form > input:nth-of-type(2)"}
  def second_checkbox, do: @second_checkbox_selector

end
