defmodule Solution do
  @spec plus_one(digits :: [integer]) :: [integer]
  def plus_one(digits) do
     number = Integer.undigits(digits)
     Integer.digits(number+1)
  end
end
