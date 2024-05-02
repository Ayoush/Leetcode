defmodule Solution do
  #Solution 1
  # def reverse_prefix(word, ch) do
  #   ch = <<ch::utf8>>
  #   case String.split(word, ch, parts: 2) do
  #       [s] -> s
  #       [left, right] -> ch <> String.reverse(left) <> right
  #   end
  # end

  #Solution 2
  def reverse_prefix(word, ch), do: reverse_char(word, word, ch, 0)

  defp reverse_char(<<x, rest::bytes>>, word, ch, i) do
    cond  do
      x != ch -> reverse_char(rest, word, ch, i+1)
      true ->
        reversed = reverse_word(word, i, <<>>)
        <<reversed::bytes, rest::bytes>>
    end
  end

  defp reverse_char(_, word, _, _), do: word

  defp reverse_word(word, i, acc) when i>=0 do
    reverse_word(word, i-1, <<acc::bytes, :binary.at(word, i)>>)
  end

  defp reverse_word(_, _, acc) do
      acc
  end

end
