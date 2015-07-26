# An anonymous function is created using the `fn` keyword
# fn
#   parameter-list -> body
#   parameter-list -> body
# end

# Define a function `sum` and call the function
sum = fn(a, b) -> a + b end
result = sum.(1, 2)
IO.puts result 

# Function takes no arguments
greet = fn -> IO.puts "Hello" end
greet.()

# You can moit the parentheses in a function definition
f1 = fn a, b -> a * b end
result = f1.(5, 6)
IO.puts result

f2 = fn -> 99 end
result = f2.()
IO.puts result
