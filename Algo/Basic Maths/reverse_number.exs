defmodule Solution do
  @spec reverse(x :: integer) :: integer
  @upperlimit 2147483647
  @lowerlimit -2147483648
  def reverse(x) do
    value = if x<0 do
          -x
        else
          x
        end

    ans = value |> Integer.to_string() |> String.reverse() |> String.to_integer()

    ans =
      if x<0 do
        -ans
      else
        ans
      end
    if ans > @upperlimit || ans < @lowerlimit do
      IO.puts(0)
    else
      IO.puts(ans)
    end
  end
end

Solution.reverse(-1234)
