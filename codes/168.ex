defmodule Solution do
  def convert_to_title(column_number) do
    if column_number <= 26 do
      find_chars(column_number)
    else
      recur(ans = "", column_number)
    end
  end

  defp find_chars(number) do
    letter = :unicode.characters_to_binary([65 + (number - 1)])
    String.upcase(letter)
  end

  defp recur(ans, num) when num <= 26 do
    String.reverse(ans <> :unicode.characters_to_binary([65 + (num-1)]))
  end

  defp recur(ans, num) do
    #this is for handling edge case where the sheet is changing at that juncture you will be getting 0 and some num
    if rem(num, 26) == 0 do
      divider = 26
      ans = ans <> :unicode.characters_to_binary([65 + (divider-1)])
      num  = div(num, 26) -1
      recur(ans, num)
    else
      divider = rem(num, 26)
      ans = ans <> :unicode.characters_to_binary([65 + (divider-1)])
      num  = div(num, 26)
      recur(ans, num)
    end
  end
end
