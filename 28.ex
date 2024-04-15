defmodule Solution do
  def indices_of_pattern(string, pattern) do
    Regex.run(~r/#{pattern}/, string, return: :index)

  end
  def str_str(haystack, needle) do

    a = indices_of_pattern(haystack, needle)
    if a do
      answer = elem(List.first(a), 0)
    else
      -1
    end
  end
end
