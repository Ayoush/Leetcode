defmodule Solution do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n, 0, 1)

  defp fib(0, _current, next), do: next
  defp fib(n, current, next), do: fib(n - 1, next, current + next)
  def climb_stairs(n) do
    fib(n, 0, 1)
  end

end
