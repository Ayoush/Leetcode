defmodule Solution do
  def search_insert(nums, target) do
    if List.last(nums) < target do
      length(nums)
    else
      if List.first(nums) > target do
        0
      else
        Enum.find_index(nums, fn x -> x>= target end)
      end
    end
  end
end
