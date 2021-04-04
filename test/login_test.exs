defmodule LoginTest do
  use Hound.Helpers
  use ExUnit.Case
  import Login
  import Sut
  import Extensions

  hound_session()

  setup do
    navigate_to(app_subpage("login"))
    :ok
  end

  test "can login" do
    find_element(username()) |> fill_field(tomsmith_username())
    find_element(password()) |> fill_field(tomsmith_password())
    click(login())
    wait_for_selector?(logout())
    assert(visible_text(flash_message()) =~ "You logged into a secure area!", "Login message did not display.")
  end

  # test "can logout" do
  # end

  # test "username invalid" do

  # end

  # test "password invalid" do

  # end

end
