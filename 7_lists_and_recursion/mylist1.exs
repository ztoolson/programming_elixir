defmodule MyList do
  def square([]), do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]

  def add_1([]), do: []
  def add_1([ head | tail ]), do: [ head+1 | add_1(tail) ]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ] 
end

# square
result = MyList.square []
IO.puts "result for empty list #{inspect result}"

result = MyList.square [4,5,6]
IO.puts "result for square [4,5,6] #{inspect result}"

# add_1
result = MyList.add_1 []
IO.puts "result for empty list #{inspect result}"

result = MyList.add_1 [4,5,6]
IO.puts "result for add_1 [4,5,6] #{inspect result}"

# map square
result = MyList.map([], &(&1))
IO.puts "result for empty list #{inspect result}"

result = MyList.map([4,5,6], &(&1*&1))
IO.puts "result for map square [4,5,6, &(&1*&1)] #{inspect result}"

# map add_1
result = MyList.map([], &(&1))
IO.puts "result for empty list #{inspect result}"

result = MyList.map([4,5,6], &(&1 + 1))
IO.puts "result for map add_1 [4,5,6, &(&1+1)] #{inspect result}"
