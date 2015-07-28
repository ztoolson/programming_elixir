defmodule Factorial do
  def our_factorial(0), do: 1
  def our_factorial(n), do: n * our_factorial(n-1)
end

# When we call the factorial of 5, it to match 5 to the first `our_factorial`
# which has a parameter 0, so that fails and elixir then tries the next 
# `our_factorial` definition, which does match and binds the function
# variable n to 5.
IO.inspect Factorial.our_factorial(5)
IO.inspect Factorial.our_factorial(7)
