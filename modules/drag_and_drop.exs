defmodule DragAndDrop do
  import Hound.Helpers.Page
  import Hound.Helpers.Element

  def header() do
    find_element(:css, "h3")
  end

  def column_a() do
    find_element(:css, "div#column-a")
  end

  def column_b() do
    find_element(:css, "div#column-b")
  end

  def position(element) do
    column_header = find_within_element(element, :css, "header")
    visible_text(column_header)
  end

end
