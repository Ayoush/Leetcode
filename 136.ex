defmodule Solution do
  @spec single_number(nums :: [integer]) :: integer
  def single_number(nums) do
    Enum.reduce(nums, %{}, fn x, acc ->
      if Map.has_key?(acc, x) do
        Map.update(acc, x, 1, fn y -> y + 1 end)
      else
        Map.put(acc, x, 1)
      end
    end) |> Enum.find_value(fn {k, v} -> if v == 1, do: k end)
  end


end
