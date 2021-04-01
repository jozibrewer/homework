defmodule Sut do

  def app_url() do
    "https://the-internet.herokuapp.com/"
  end

  def app_subpage(subpage) do
    "#{app_url()}#{subpage}"
  end

end
