defmodule Solution do
  def roman_litera_numeric_conversion(literal) do
     numberic_rep = %{
       "I" =>1,
       "V" =>5,
       "X" =>10,
       "L"=>50,
       "C"=>100,
       "D"=>500,
       "M"=>1000
     }
     numberic_rep[literal]
   end

   def roman_to_int(s) do
     result = Enum.reduce(String.reverse(s) |> String.codepoints(), {nil, 0}, fn x, acc ->
       numeral = roman_litera_numeric_conversion(x)
       case acc do
         {nil, _} ->
           {numeral, numeral}
         {prev_numeral, total} when prev_numeral < numeral ->
           {numeral, total + numeral}
         {prev_numeral, total} when prev_numeral > numeral ->
           {numeral, total - numeral}
         {prev_numeral, total} when prev_numeral == numeral ->
           {numeral, total + numeral}
       end
     end)
     elem(result, 1)
   end
 end
