defmodule Solution do
  def kth_factor(n, k) do
    factors =
      1..round(:math.sqrt(n))
      |> Enum.reduce([], fn x, acc ->
        if rem(n, x) == 0 do
          if x == div(n, x) do
            acc = acc ++ [x]
          else
            acc = acc ++ [div(n, x), x]
          end

        else
          acc
        end
      end)
      |> Enum.sort()
    if Enum.at(factors, k-1) do
      Enum.at(factors, k-1)
    else
      -1
    end
  end
end
