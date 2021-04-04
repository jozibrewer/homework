defmodule DynamicLoading do

  # On using index selectors as opposed to text:
  # Selectors on these pages are often indescript, making unique selectors tricky.
  # I choose not to use text whenever possible since it tends to be more brittle.
  # Text selectors become less reusable in platform localization tests, and can break due to OS specific cultures.
  # Ideally you'd have test hooks attributes, but other unique attributes would also do.

  @example_one_selector {:css, "div.example > a:nth-of-type(1)"}
  def example_one, do: @example_one_selector

  @example_two_selector {:css, "div.example > a:nth-of-type(2)"}
  def example_two, do: @example_two_selector

  @start_button_selector {:css, "div#start > button"}
  def start_button, do: @start_button_selector

  @finish_label_selector {:css, "div#finish"}
  def finish_label, do: @finish_label_selector

end
