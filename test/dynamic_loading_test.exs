defmodule DynamicLoadingTest do
  use Hound.Helpers
  use ExUnit.Case
  import Sut
  import DynamicLoading
  import Extensions

  hound_session()

  setup do
    navigate_to(app_subpage("dynamic_loading"))
    wait_for_selector?(example_one())
    :ok
  end

  @tag timeout: 10000
  test "hello world is displayed" do
    click(example_one())
    click(start_button())
    wait_for_selector?(finish_label())
    assert(element_displayed?(finish_label()), "Element present in the DOM did not display.")
  end

  @tag timeout: 10000
  test "hello world created and is displayed" do
    click(example_two())
    click(start_button())
    wait_for_selector?(finish_label())
    assert(element_displayed?(finish_label()), "Element was not created in the DOM or not displayed.")
  end

end
