defmodule Times do
  def double(n) do
    n * 2
  end

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    Times.double(Times.double(n))
    # n * 4
  end
end

IO.inspect Times.triple(3)
IO.inspect Times.quadruple(3)


defmodule Sum do
  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)
end

IO.inspect "The sum from 1 to 5 is: #{Sum.sum(5)}"

defmodule MyMath do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end

IO.inspect "The gcd of 35, and 15 is: #{MyMath.gcd(35, 15)}"
