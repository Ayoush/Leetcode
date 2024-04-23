defmodule Solution do
  @spec max_frequency(nums :: [integer], k :: integer) :: integer
  def max_frequency(nums, k) do
    nums = Enum.sort(nums)
    slide(nums, nums, k, 1, 1)
  end

  defp slide([x1 | tail1], [x2 | tail2], k, len, ans) when k < 0 do
    IO.puts("slide 1")
    IO.puts(x1)
    IO.puts(x2)
    IO.inspect(tail1)
    IO.inspect(tail2)
    IO.puts(k)
    IO.puts(len)
    IO.puts(ans)
    slide(tail1, [x2 | tail2], k + x2 - x1, len - 1, ans)
  end
  defp slide(_, [_], _, len, ans), do: max(len, ans)
  defp slide(nums1, [x2, y2 | tail2], k, len, ans) do
    IO.puts("slide 2")
    IO.inspect(nums1)
    IO.puts(x2)
    IO.puts(y2)
    IO.inspect(tail2)
    IO.puts(k)
    IO.puts(len)
    IO.puts(ans)
    slide(nums1, [y2 | tail2], k - (y2 - x2) * len, len + 1, max(len, ans))
  end
end
