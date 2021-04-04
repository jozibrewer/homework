defmodule Login do

  @username_selector {:css, "input#username"}
  def username, do: @username_selector

  @password_selector {:css, "input#password"}
  def password, do: @password_selector

  @login_selector {:css, "button[type=submit]"}
  def login, do: @login_selector

  @logout_selector {:css, "a.button"}
  def logout, do: @logout_selector

  @flash_message_selector {:css, "div#flash"}
  def flash_message, do: @flash_message_selector

end
