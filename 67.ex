defmodule Solution do
 def add_binary(a, b) do
    a = String.to_integer(a) |> Integer.digits() |> Integer.undigits(2)
    b = String.to_integer(b) |> Integer.digits() |> Integer.undigits(2)
    result = Integer.digits(a+b, 2) |> Integer.undigits() |> Integer.to_string()
  end
end
