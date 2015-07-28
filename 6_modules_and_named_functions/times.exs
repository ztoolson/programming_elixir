defmodule Times do
  def double(n) do
    n * 2
  end
end


IO.inspect Times.double(5)
IO.inspect Times.double("string")
