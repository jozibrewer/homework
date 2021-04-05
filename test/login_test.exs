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

  @tag timeout: 5000
  test "can login" do
    find_element(username()) |> fill_field(tomsmith_username())
    find_element(password()) |> fill_field(tomsmith_password())
    click(login())
    wait_for_selector?(logout())
    assert(visible_text(flash_message()) =~ "You logged into a secure area!", "Login message did not display.")
  end

  @tag timeout: 5000
  test "can logout" do
    find_element(username()) |> fill_field(tomsmith_username())
    find_element(password()) |> fill_field(tomsmith_password())
    click(login())
    click(logout())
    wait_for_selector?(login())
    assert(visible_text(flash_message()) =~ "You logged out of the secure area!", "Logout message did not display.")
  end

  # Pipe |>, no pipe.. can't decide which I like more.

  @tag timeout: 5000
  test "username invalid" do
    fill_field(username(), "arthurdent")
    fill_field(password(), tomsmith_password())
    click(login())
    assert(visible_text(flash_message()) =~ "Your username is invalid!", "Invalid username error did not display.")
  end

  @tag timeout: 5000
  test "password invalid" do
    fill_field(username(), tomsmith_username())
    fill_field(password(), "42")
    click(login())
    assert(visible_text(flash_message()) =~ "Your password is invalid!", "Invalid password error did not display.")
  end

end
