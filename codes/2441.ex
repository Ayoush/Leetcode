defmodule Solution do
  @spec find_max_k(nums :: [integer]) :: integer
  def find_max_k(nums) do
    nums = Enum.sort(nums)
    result = %{ans: -1}
    ans = Enum.reduce(nums, result, fn(x, acc) ->
      if x > 0 do
        if Map.has_key?(acc, -(x)) do
          Map.put(acc, :ans, max(acc[:ans], x))
        else
          acc
        end
      else
        if Map.has_key?(acc, x) do
          acc
        else
          Map.put(acc, x, -(x))
        end
      end
    end)
    ans.ans
  end


end
