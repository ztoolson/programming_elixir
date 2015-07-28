defmodule Factorial do
  def our_factorial(0), do: 1
  def our_factorial(n) when n > 0 do
    n * our_factorial(n-1)
  end
end

IO.puts Factorial.our_factorial(5)
IO.puts Factorial.our_factorial(-5)
