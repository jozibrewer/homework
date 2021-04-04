defmodule ApiTest do
  use ExUnit.Case
  import HTTPoison

  test "status is green" do
    ## I would have really liked the use the struct like this, but couldn't figure it out how.
    # response = get("https://reqres.in/api/users/2")
    # assert(match?({:ok, _}, response), "Api did not response 200OK.")
    case get("https://reqres.in/api/users/2") do
      {:ok, %HTTPoison.Response{body: _body, status_code: 200}} ->
        assert(true, "Status is green.")
      {:ok, %HTTPoison.Response{body: _body, status_code: 404}} ->
        assert(false, "Status was not green.")
    end
  end

end
