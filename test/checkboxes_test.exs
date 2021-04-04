defmodule CheckboxesTest do
  use Hound.Helpers
  use ExUnit.Case
  import Sut
  import Checkboxes

  hound_session()

  # I'm not sure what folks prefer as far as function call with or without () go.
  # The argument for readability could go either way. I'd defer to the team's preference.
  # This fixture is intentionally done without () so I can visualize it.

  setup do
    navigate_to app_subpage("checkboxes")
    :ok
  end

  test "can check checkbox" do
    click first_checkbox
    assert selected?(first_checkbox), "Checkbox was not checked."
  end

  test "can uncheck checkbox" do
    click second_checkbox
    assert !selected?(second_checkbox), "Checkbox was not unchecked."
  end

end
