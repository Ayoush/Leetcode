defmodule CommonPrefix do
  def longest_common_prefix([]), do: ""

  def longest_common_prefix(strs) when length(strs) == 1 do
    List.first(strs)
  end
  def longest_common_prefix([first | rest]) do
    common_prefix(first, rest, "")
  end

  defp common_prefix(_str, [], result), do: result

  defp common_prefix(str, [next | rest], result) do
    common_prefix_helper(str, next, 0, result, rest)
  end

  defp common_prefix_helper(_str1, _str2, index, result, _rest) when index < 0, do: result

  defp common_prefix_helper(str1, str2, _index, result, rest) when str1 == str2 do
    if result != "" do
      common_prefix(str1, rest, result)
    else
      common_prefix(str1, rest, str1)
    end

  end

  defp common_prefix_helper(str1, str2, index, result, rest) do
    if String.at(str1, index) == String.at(str2, index) do
      common_prefix_helper(str1, str2, index + 1, result, rest)
    else
      if index == 0 do
        ""
      else
        if result = "" do
          temp = String.slice(str1, 0, index)
          common_prefix(str1, rest, temp)
        else
          if String.equivalent?(String.slice(str1, 0, index), result) do
            common_prefix(str1, rest, result)
          else
            ""
          end
        end
      end
    end
  end
end
