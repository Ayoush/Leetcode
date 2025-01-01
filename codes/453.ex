defmodule Solution do
  def min_moves(nums) do
    nums = Enum.sort(nums)
    min_element = List.first(nums)
    Enum.reduce(nums, 0, fn x, acc ->
      acc = acc + (x - min_element)
    end)
  end
  # def min_moves(nums) do
  #   nums = Enum.sort(nums)

  #   if length(nums) == 1 do
  #     0
  #   else
  #     if hd(nums) == Enum.at(nums, -1) do
  #       0
  #     else
  #       if length(nums) == 2 do
  #         List.last(nums) - List.first(nums)
  #       else
  #         moves(0, Enum.reverse(nums))
  #       end
  #     end
  #   end
  # end

  # def moves(count, [head | tail]) when length(tail) > 1 do
  #   max_element = head
  #   min_element = List.last(tail)
  #   second_last_element = List.first(tail)

  #   if max_element == min_element and second_last_element == max_element do
  #     count
  #   else
  #     if max_element > min_element and max_element >= second_last_element do

  #       tail = Enum.map(tail, fn x -> x + 1 end)

  #       count = count + 1
  #       moves(count, [max_element | tail])
  #     else
  #       temp_list = ([head] ++ tail) |> Enum.sort() |> Enum.reverse()
  #       moves(count, temp_list)
  #     end
  #   end
  # end
end
