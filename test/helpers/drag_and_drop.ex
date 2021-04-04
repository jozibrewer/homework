defmodule DragAndDrop do
  import Hound.Helpers.Page
  import Hound.Helpers.Element

  @header_selector {:css, "h3"}
  def header, do: @header_selector

  @column_a_selector {:css, "div#column-a"}
  def column_a, do: @column_a_selector

  @column_b_selector {:css, "div#column-b"}
  def column_b, do: @column_b_selector

  def position(selector) do
    find_element(elem(selector, 0), elem(selector, 1))
    |> find_within_element(:css, "header")
    |> visible_text()
  end

end
