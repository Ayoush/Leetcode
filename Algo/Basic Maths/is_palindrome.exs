defmodule Solution do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) do
    cond do
      x< 0 -> false
      x == 0 or x<10 -> true
      rem(x, 10) == 0 -> false
      true ->
        reverse_number  = sol(x, 0)
        if reverse_number == x do
          true
         else
           false
        end
    end
  end

  def sol(x, n) when x == 0 do
    n
  end

  def sol(x, n) do
    n = rem(x, 10) + (n * 10)
    x = div(x, 10)
    sol(x, n)
  end
end
