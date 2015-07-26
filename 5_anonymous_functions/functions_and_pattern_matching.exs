# Elixer uses pattern matching to bind values passed to the function.
swap = fn { a, b } -> { b, a } end
result = swap.({ 6, 8 })
IO.puts inspect result
