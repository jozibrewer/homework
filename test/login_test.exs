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
    find_element(username())
    |> fill_field(Sut.tomsmith_username)
  end

  # test "can logout" do
  # end

  # test "username invalid" do

  # end

  # test "password invalid" do

  # end

end
