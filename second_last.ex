defmodule ListHelper do
  def second_last([_]) do
    nil  # If the list has only one element, there's no second last element
  end

  def second_last([second_last_element, _ | []]) do
    second_last_element
  end

  def second_last([_head | tail]) do
    second_last(tail)
  end
end
