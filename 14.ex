defmodule CommonPrefix do
  def longest_common_prefix(strs) do

    strs
    |> Enum.map(&String.to_charlist/1)
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.map(&Enum.uniq/1)
    |> Enum.take_while(&match?([_], &1))
    |> IO.iodata_to_binary()
  end
end
