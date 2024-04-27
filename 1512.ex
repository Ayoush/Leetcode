defmodule Solution do
  def num_identical_pairs(nums) do
    num_occur = %{}
    nums = Enum.with_index(nums)
    result = recur(num_occur, nums)


    round(Enum.reduce(result, 0, fn x, acc ->
      {_v, l} = x

      if length(l) == 2 do
        acc = acc + 1
      else
        if length(l) > 2 do
          lf = factorial(length(l))
          dem = factorial(length(l) - 2) * 2
          acc = acc + lf / dem
        else
          acc
        end
      end
    end))
  end

  defp recur(num_list, [head | tail] = nums) when length(nums) > 1 do
    {number, index} = head

    if number in Map.keys(num_list) do
      num_list = Map.put(num_list, number, num_list[number] ++ [index])
      recur(num_list, tail)
    else
      num_list = Map.put(num_list, number, [index])
      recur(num_list, tail)
    end
  end

  defp recur(num_list, [last]) do
    {number, index} = last

    if number in Map.keys(num_list) do
      Map.put(num_list, number, num_list[number] ++ [index])
    else
      Map.put(num_list, number, [index])
    end
  end

  defp factorial(num) when num > 1 do
    num * factorial(num - 1)
  end

  defp factorial(num) do
    num
  end
end
