defmodule DragAndDropTest do
  Code.require_file("sut.exs", "modules")
  Code.require_file("drag_and_drop.exs", "modules")
  Code.require_file("extensions.exs", "modules")

  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

  def set_up() do
    navigate_to Sut.app_subpage("drag_and_drop")
  end

  test "drag and drop switches positions" do
    set_up()

    Extensions.drag_and_drop(DragAndDrop.column_a, DragAndDrop.column_b)
    position = DragAndDrop.position(DragAndDrop.column_a)
    assert position == "B", "Columns did not switch."
  end

  test "drag and drop honors dropzone" do
    set_up()

    Extensions.drag_and_drop(DragAndDrop.column_a, DragAndDrop.header)
    position = DragAndDrop.position(DragAndDrop.column_a)
    assert position == "A", "Columns should not have switched. Dropzone was not honored."
  end

end
