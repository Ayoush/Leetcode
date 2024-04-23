defmodule Solution do
  def length_of_last_word(s) do
    result = s |> String.split(" ") |> Enum.reject(fn x -> x == "" end)
    String.length(List.last(result))
  end
end
