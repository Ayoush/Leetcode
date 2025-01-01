defmodule ListNode do
  defstruct val: 0, next: nil
end

defmodule LinkedList do
  def print_list(nil, s), do: form_linkedlist(s)
  def print_list(%ListNode{val: val, next: next}, s) do
    s = MapSet.put(s, val)
    print_list(next, s)
  end
  def delete_duplicates(head) do
    s = MapSet.new()
    print_list(head, s)
  end

  defp form_linkedlist(s) do
    a = MapSet.to_list(s) |> Enum.sort()
    list_to_linked_list(a)
  end

  def list_to_linked_list([]), do: nil

  def list_to_linked_list([head | tail]) do
    %ListNode{val: head, next: list_to_linked_list(tail)}
  end
end


# alternate solution
defmodule Solution do
  def delete_duplicates(%ListNode{val: v1, next: next}) when next != nil do
    if v1 == next.val, do: delete_duplicates(next), else: %ListNode{val: v1, next: delete_duplicates(next)}
  end
  def delete_duplicates(node), do: node
end
