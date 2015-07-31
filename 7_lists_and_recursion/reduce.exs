defmodule MyList do
  def reduce([], value, _), do: value

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
end

result = MyList.reduce([1,2,3], 0, &(&1+&2))
IO.puts "sum using reduce #{inspect result}"
