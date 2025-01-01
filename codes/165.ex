defmodule Solution do
  def compare_version(version1, version2) do
    version1 = version1 |> String.split(".") |> Enum.reduce([], fn x, acc -> acc ++ [String.to_integer(x)] end)
    version2 = version2 |> String.split(".") |> Enum.reduce([], fn x, acc -> acc ++ [String.to_integer(x)] end)
    len1 = length(version1)
    len2 = length(version2)
    {version1, version2} =
    if len1 < len2 do

        {version1 ++ List.duplicate(0, len2 - len1), version2}

    else

        {version1, version2 ++ List.duplicate(0, len1 - len2)}

    end
    ans =
       Enum.zip(version1, version2)
      |> Enum.map(&Tuple.to_list/1)
      |> Enum.reduce_while(0, fn [x, y], acc ->
        if x>y do

          {:halt, acc + 1}
        else
          if x<y do

            {:halt, acc - 1}
          else
            {:cont, acc}
          end
        end
      end)
  end
end
