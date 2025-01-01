# Definition for singly-linked list.
#
defmodule ListNode do
  @type t :: %__MODULE__{
          val: integer,
          next: ListNode.t() | nil
        }
  defstruct val: 0, next: nil
end

defmodule Solution do
  def remove_nodes() do
      head = %ListNode{
        val: 5,
        next: %ListNode{
          val: 2,
          next: %ListNode{
            val: 13,
            next: %ListNode{val: 3, next: %ListNode{val: 8, next: nil}}
          }
        }
      }
      place_to_replace = head
      ans = reduce(head, place_to_replace, %ListNode{val: nil, next: nil}, %ListNode{val: head.val, next: head.next})
  end

  defp reduce(%ListNode{val: val, next: next} = head, place_to_replace, ans, max_value) when val > head.val do
    reduce(next, next.next, %ListNode{val: val, next: next}, %ListNode{val: val, next: next})
  end

  defp reduce(%ListNode{val: val, next: next}, place_to_replace, ans, max_value) when val >= max_value do
    reduce(next, place_to_replace, ans, %ListNode{val: val, next: next})
  end

  defp reduce(%ListNode{val: val, next: next}, place_to_replace, ans, max_value) when val < max_value do
    ans = add_to_the_end(ans, max_value)
    reduce(next.next, next, ans, max_value.next)
  end
  defp reduce(_, _, ans, _), do: ans

  defp add_to_the_end(%ListNode{val: val, next: next}, max_value) do
    %ListNode{val: val, next: add_to_the_end(next, max_value)}
  end

  defp add_to_the_end(%ListNode{val: val, next: nil}, max_value) do
    %ListNode{val: val, next: max_value}
  end


end
