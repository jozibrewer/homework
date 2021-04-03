defmodule CheckboxesTest do
  use Hound.Helpers
  use ExUnit.Case
  Code.require_file("sut.exs", "modules")
  Code.require_file("checkboxes.exs", "modules")

  hound_session()

  def set_up() do
    navigate_to Sut.app_subpage("checkboxes")
  end

  test "can check checkbox" do
    set_up()

    click Checkboxes.first_checkbox
    assert selected?(Checkboxes.first_checkbox), "Checkbox was not checked."
  end

  test "can uncheck checkbox" do
    set_up()

    click Checkboxes.second_checkbox
    assert !selected?(Checkboxes.second_checkbox), "Checkbox was not unchecked."
  end

end
