defmodule Solution do
  def maximum_product(nums) do
    nums = Enum.sort(nums)
    fmin = Enum.at(nums, 0)
    smin = Enum.at(nums, 1)
    max1 = Enum.at(nums, length(nums)-1)
    max2 = Enum.at(nums, length(nums)-2)
    max3 = Enum.at(nums, length(nums)-3)
    max(fmin * smin* max1, max1 * max2* max3)
  end
end
