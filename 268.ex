defmodule Solution do
  @spec missing_number(nums :: [integer]) :: integer
  def missing_number(nums) do
    (sum_of_enum(length(nums)) - Enum.sum(nums))
  end

  def sum_of_enum(n) do
    div((n * (n + 1)), 2)
  end
end
