defmodule Login do

  def username, do: {:css, "input#username"}
  def password, do: {:css, "input#password"}
  def login, do: {:css, "button[type=submit]"}
  def logout, do: {:css, "a.button"}
  def flash_message, do: {:css, "div#flash"}

end
