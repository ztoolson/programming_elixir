# Write the sum function without using an accumulator.
defmodule MyList do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)
end

result = MyList.sum([1,2,3])
IO.puts "sum is: #{result}"

# Write a mapsum functin that takes a list and a function. It applies
# function to each element of the list and then sums the result
defmodule MapSum do
  def mapsum([], _), do: 0
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end
end

result = MapSum.mapsum([1,2,3], &(&1 * &1))
IO.puts "mapsum([1, 2, 3], square): #{inspect result}"

# Write a max(list) that returns the element with the maximum value in
# the list. (This is slightly tricier than it sounds)
defmodule Max do
  def max([]), do: 0
  def max([head|tail]) do
    _max(tail, head)
  end

  defp _max([], value), do: value

  defp _max([head|tail], value) when value > head do
    _max(tail, value)
  end
  defp _max([head|tail], value) when value <= head do
    _max(tail, head)
  end
end

result = Max.max([1,2,3])
IO.puts "max in [1,2,3]: #{result}"

# An Elixir single-quoted string is actually a list of individual character 
# codes. Write a caesar(list, n) function that add n to each list element,
# wrapping if the addidion results in a character greater then z
defmodule Caesar do
  def caesar([], _n), do: []
  def caesar([head|list], n) do
    # get the number representation of the letter from 1-26
    basic_number = head - (?a)
    # add n and wrap the number, then convert back to ascii code
    wrapped_number = rem(basic_number + n, 26) + (?a)

    [wrapped_number | caesar(list, n)]
  end
end

result = Caesar.caesar([?c, ?a, ?t], 1)
IO.puts "result: #{ inspect result}"

result = Caesar.caesar([?z, ?a, ?y], 2)
IO.puts "result zay + 2: #{ inspect result}"


# Write a function MyList.span(from, to) that return a list of the numbers
# from from up to to
defmodule MySpanList do
  def span(from,from), do: [from]
  def span(from, to) when from > to do
    [ from | span(from-1, to)]
  end
 def span(from, to) when from < to do
   [ from | span(from+1, to)]
 end
end

result = MySpanList.span(5, 7)
IO.puts "create a list from 5..7: #{inspect result}"

result = MySpanList.span(10, 0)
IO.puts "create a list from 10..0: #{inspect result}"

result = MySpanList.span(0, 0)
IO.puts "create a list from 0, 0: #{inspect result}"
