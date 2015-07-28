# The |> operator takes the result of the expression to its left and inserts
# it as the first parameter of the function invocation to its right.

# val |> f(a, b) is the same as f(val, a, b)

# Take the range 1..10, map all the elements in the range and multiply them
# by each other in a list. Then take that list of squared and keep all the ones
# less than 40.
result = (1..10) |> Enum.map(&(&1*&1)) |> Enum.filter(&(&1 < 40))
IO.inspect result
