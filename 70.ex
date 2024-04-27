defmodule Solution do
  def calculate_climb(1), do: 1
  def calculate_climb(2), do: 2
  def calculate_climb(n), do: calculate_climb(n-2) + calculate_climb(n-1)
  def climb_stairs(n) do
    calculate_climb(n)
  end
end
