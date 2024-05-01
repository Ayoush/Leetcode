defmodule Solution do
  def trailing_zeroes(n) do
    zeroes(n, 1, div(n, round(:math.pow(5, 1))))
  end

  def zeroes(n, x, y) when y > 0 do
    div(n, round(:math.pow(5, x))) + zeroes(n, x+1, div(n, round(:math.pow(5, x))))
  end

  def zeroes(_, _, _), do: 0
end
