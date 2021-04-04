defmodule Sut do

  def app_url() do
    "https://the-internet.herokuapp.com/"
  end

  def app_subpage(subpage) do
    "#{app_url()}#{subpage}"
  end

  def tomsmith_username, do: "tomsmith"
  # This should almost certainly be encrypted. Plain text passwords in code are no good.
  # An encryption service (or the likes) on the machine running the tests could decrypt the encrypted password at run time.
  def tomsmith_password, do: "SuperSecretPassword!"

end
