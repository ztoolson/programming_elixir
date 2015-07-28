defmodule BadFactorial do
  # This ordering of function is bad, since the first method always
  # matches and the 0 case function will never be called.
  def our_factorial(n), do n * our_factorial(n-1)
  def our_factorial(0), do 1
end
