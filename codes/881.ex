defmodule Solution do
  def num_rescue_boats(people, limit) do
    strength = length(people)
    skinny = Enum.sort(people)
    fatties = Enum.reverse(skinny)
    boats(0, skinny, fatties, limit, strength)
  end

  defp boats(ans, [stick | other_sticks] = skinny, [fattest | other_fatties], limit, strength) when strength > 1 do
    if stick + fattest <= limit do
      boats(ans + 1, other_sticks, other_fatties, limit, strength - 2)
    else
      boats(ans + 1, skinny, other_fatties, limit, strength - 1)
    end
  end

  defp boats(ans, _, _, _, strength), do: ans + strength
end
