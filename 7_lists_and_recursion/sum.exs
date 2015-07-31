defmodule MyList do
  def sum([], total), do: total
  def sum([ head | tail ], total), do: sum(tail, head+total)
end

result = MyList.sum([1,2,3], 0)
IO.puts "sum total for [1,2,3]: #{result}"
