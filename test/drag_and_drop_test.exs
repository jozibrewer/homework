defmodule DragAndDropTest do
  Code.require_file("sut.exs", "modules")
  Code.require_file("drag_and_drop.exs", "modules")
  Code.require_file("extensions.exs", "modules")

  use Hound.Helpers
  use ExUnit.Case

  hound_session()

  def set_up() do
    navigate_to Sut.app_subpage("drag_and_drop")
    Extensions.wait_for_selector?(DragAndDrop.header)
  end

  test "drag and drop switches positions" do
    set_up()

    Extensions.drag_and_drop(DragAndDrop.column_a, DragAndDrop.column_b)
    assert DragAndDrop.position(DragAndDrop.column_b) == "B", "Columns should have switched."
  end

  test "drag and drop honors dropzone" do
    set_up()

    Extensions.drag_and_drop(DragAndDrop.column_a, DragAndDrop.header)
    assert DragAndDrop.position(DragAndDrop.column_a) == "A", "Columns should not have switched. Dropzone was not honored."
  end

end
