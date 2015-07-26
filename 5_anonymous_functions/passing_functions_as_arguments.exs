# Functions are just values, so we can pass them to other functions.

times_2 = fn n -> n * 2 end
apply = fn(fun, value) -> fun.(value) end
result = apply.(times_2, 6)
IO.puts result

# Built in Enum module called `map`, to apply a function to each item in a list
list = [1, 3, 5, 7, 9]

result = Enum.map list, fn elem -> elem * 2 end
IO.puts inspect result

result = Enum.map list, fn elem -> elem * elem end
IO.puts inspect result

result = Enum.map list, fn elem -> elem > 6 end
IO.puts inspect result


# The & notation
add_one = &(&1 + 1) # same as add_one = fn(n) -> n + 1 end
result = add_one.(44) # 45
IO.puts inspect result

square = &(&1 * &1)
result = square.(8)
IO.puts inspect result

speak = &(IO.puts(&1)) # Elixer optizes this to know that it just calls IO.puts directly.
speak.("Hello")

rnd = &(Float.round(&1, &2)) # Elixer optimizes this
rnd = &(Float.round(&2, &1)) # Elixer does not optimizes this since the parameters are not the same

# Second form of the & function capture operator
# You can give it the name, and arity (number of parameters) of an existing
# funnction and it will return an anonymous function that calls it. The
# arguements you pass to the anonymous function will be passed into the named
# function.
# &(IO.puts(&1)) => &IO.puts/1

len = &length/1
result = len.([1, 3, 5, 7])
IO.puts inspect result

len = &Enum.count/1
result = len.([1, 3, 5, 7])
IO.puts inspect result

m = &Kernel.min/2 # Note: this is an alias for the erlang function
result = m.(99, 88)
IO.puts inspect result

# Examples of using the shortcut
result = Enum.map [1, 2, 3, 4], &(&1 + 1) # => [2, 3, 4, 5]
IO.puts inspect result

result = Enum.map [1, 2, 3, 4], &(&1 & &1) # => [1, 4, 9, 16]
IO.puts inspect result

result = Enum.map [1, 2, 3, 4], &(&1 < 3) # => [true, true, false, false]]
IO.puts inspect result
