defmodule DynamicLoading do

  # On using index selectors as opposed to text:
  # Selectors on these pages are often indescript, making unique selectors tricky.
  # I choose not to use text whenever possible since it tends to be more brittle.
  # Text selectors become less reusable in platform localization tests, and can break due to OS specific cultures.
  # Ideally you'd have test hooks attributes, but other unique attributes would also do.

  def example_one, do: {:css, "div.example > a:nth-of-type(1)"}
  def example_two, do: {:css, "div.example > a:nth-of-type(2)"}
  def start_button, do: {:css, "div#start > button"}
  def finish_label, do: {:css, "div#finish"}

end
