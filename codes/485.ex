defmodule Solution do
  @spec find_max_consecutive_ones(nums :: [integer]) :: integer
  def find_max_consecutive_ones(nums) do
    result = Enum.reduce(nums, {0, 0}, fn x, acc ->
      if x == 1 do
        {elem(acc, 0), elem(acc, 1) + 1}
      else
        {max(elem(acc, 0), elem(acc, 1)), 0}
      end
    end)

    max(elem(result, 0), elem(result, 1))
  end
end
