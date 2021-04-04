defmodule Sut do

  def app_url() do
    "https://the-internet.herokuapp.com/"
  end

  def app_subpage(subpage) do
    "#{app_url()}#{subpage}"
  end

  def tomsmith_username, do: "tomsmith"

  def tomsmith_password, do: "SuperSecretPassword!"

end
