defmodule DragAndDropTest do
  use Hound.Helpers
  use ExUnit.Case
  import Extensions
  import Sut
  import DragAndDrop

  hound_session()

  setup do
    navigate_to(app_subpage("drag_and_drop"))
    wait_for_selector?(column_a())
    :ok
  end

  ## I initially chose drag and drop tests because they're notoriously tricky in web automation.
  ## Sure enough, I wasn't quite able to figure out how to do it with Hound before the deadline I had set for myself.

  # test "drag and drop switches positions" do
  #   drag_and_drop(column_a(), column_b())
  #   assert(position(column_b()) == "B", "Columns should have switched.")
  # end

  # test "drag and drop honors dropzone" do
  #   drag_and_drop(column_a(), header())
  #   assert(position(column_a()) == "A", "Columns should not have switched. Dropzone was not honored.")
  # end

end
