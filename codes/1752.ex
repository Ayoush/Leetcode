defmodule Solution do
  def check([]), do: false
  def check(nums) do
    # Checking if the nums are already sorted. If yes then it doesn't matter if you rotate it or not
    if nums == Enum.sort(nums) do
      true
    else
      indexed = Enum.with_index(nums)
      {_, tail} = List.pop_at(indexed, 0) # this works as our previous element
      pivot_index = find_pivot(List.first(indexed),tail , -1) # finding the index where minimum element of the list exist as after rotation sent previous element, next elemt and -1 as pivot
      {first_half, second_half} = divide_nums(indexed, pivot_index, [], []) # divide the nums into two half first is the
      #  half which will contain all the big values since nums were originally sorted and then rotates so by definition higher values should be in first half
      if first_half == Enum.sort(first_half) and second_half == Enum.sort(second_half) and strictly_increasing(Enum.min(first_half), Enum.max(second_half)) do # checking if both the first half and second half is sorted in them self since rotation will not hamper there sorted nature,
      # but this function strictly_increasing is ensuring if we are only getting higher values in first half and lower values in second half. If not then the rotation or sorting didn't happen.
        true
      else
        false
      end
    end
  end

  defp strictly_increasing(first, second) when first >= second, do: true
  defp strictly_increasing(first, second) when first < second, do: false

  defp strictly_increasing(first_half, second_half) do
    true
  end

  defp find_pivot(_, [], pivot_index), do: pivot_index
  defp find_pivot({pval, _pindex}, [{nval, nindex} | tail], pivot_index) do
    if nval >= pval do
      find_pivot({nval, nindex}, tail, pivot_index)
    else
      nindex
    end
  end

  defp divide_nums([], _, first_half, second_half), do: {first_half, second_half}
  defp divide_nums([{val, index} | tail], pivot_index, first_half, second_half) when index < pivot_index, do: divide_nums( tail, pivot_index, first_half ++ [val], second_half)
  defp divide_nums([{val, _index} | tail], pivot_index, first_half, second_half), do: divide_nums( tail, pivot_index, first_half, second_half ++ [val])

end
