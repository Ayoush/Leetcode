defmodule Solution do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) do
    c = Integer.to_string(x) |> String.reverse()
    if Integer.to_string(x) == c do
      true
    else
      false
    end
  end
end
