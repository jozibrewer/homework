defmodule DragAndDrop do
  import Hound.Helpers.Page
  import Hound.Helpers.Element
  import Extensions

  def header, do: {:css, "h3"}
  def column_a, do: {:css, "div#column-a"}
  def column_b, do: {:css, "div#column-b"}

  def position(selector) do
    find_element(selector)
    |> find_within_element(:css, "header")
    |> visible_text()
  end

end
