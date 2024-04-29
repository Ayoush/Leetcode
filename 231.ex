defmodule Solution do
  # def is_power_of_two(n) do
  #   if n <= 0 do
  #     false
  #   else
  #     if n == 1 do
  #       true
  #     else
  #       ans = :math.log2(n)
  #       if round(ans) == ans do
  #         true
  #       else
  #         false
  #       end
  #     end
  #   end
  # end

  # Solution i liked
#   Approach
# A power of 2 will have the first bit as 1 and the rest of the bits as 0. Using this information, you have to check if the number without the first bit is zero. If it is, then the number is a power of 2. A bitwise and operation between the number and number - 1 will give you 0 if the number is a power of 2.

# 16 - 1000
# 16 - 1 = 15- 0111
# 16 band 15 - 0000 == 0, hence 16 is a power of 2

# 13 - 1101
# 13 - 1 = 12- 1100
# 13 band 12 - 1100 != 0, hence 13 is not a power of 2

# Complexity
# Time complexity:
# O(1)

# Space complexity:
# O(1)

  def is_power_of_two(0), do: false
  def is_power_of_two(n), do: Bitwise.band(n, n-1) == 0
end
