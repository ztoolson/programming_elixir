# Exercise: Functions-1
# Create and the run functions that do the following:
IO.puts "Exercise 1"

list_concat = fn (list1, list2) -> list1 ++ list2 end
result = list_concat.([:a, :b], [:c, :d]) # => [:a, :b, :c, :d ]
IO.inspect result

sum = fn (a, b, c) -> a + b + c end
result = sum.(1, 2, 3) # => 6
IO.inspect result

pair_tuple_to_list = fn { a, b }  -> [a, b] end
result = pair_tuple_to_list.( { 1234, 5678 } ) # => [ 1234, 5678 ]
IO.inspect result

# Write a function that takes three arguments. If the first two are zero,
# return "FizzBuzz". If the first is zero, return "Fizz". If the second is
# zero, return "Buzz". Otherwise return the third argument.
IO.puts "Exercise 2"

fizzbuzz = fn
  { 0, 0, _ } -> "FizzBuzz"
  { 0, _, _ } -> "Fizz"
  { _, 0, _ } -> "Buzz"
  { _, _, c } -> c 
end

result = fizzbuzz.({0, 0, 12}) # FizzBuzz
IO.inspect result

result = fizzbuzz.({0, 2, 12})  # Fizz
IO.inspect result

result = fizzbuzz.({2, 0, 12})  # Buzz
IO.inspect result

result = fizzbuzz.({2, 5, 12})  # 12
IO.inspect result

# The operator rem(a, b) return the remainder after dividing a by b. Write a
# function that takes a singe integer (n) and calls the function in the
# previous exercise, passing it { rem(n, 3), rem(n, 5), n }. Call it seven
# times with the arguments 10, 11, 12, and so on. You should get:
# "Buzz, 11, Fizz, 13, 14, FizzBuzz, 16"
IO.puts "Exercise 3"

buzzer = fn(n) -> IO.puts fizzbuzz.({ rem(n, 3), rem(n, 5), n }) end
buzzer.(10)
buzzer.(11)
buzzer.(12)
buzzer.(13)
buzzer.(14)
buzzer.(15)
buzzer.(16)


# Write a function `prefix` that takes a string. It should return a new
# function that takes a second string. When that second function is called,
# it will return a string containing the first string, a space, and the
# second string.
IO.puts "Exercise 4"

prefix = fn name -> (fn other -> "#{name} #{other}" end) end
mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixer").("Rocks")


# Use the & notation to rewire the following
IO.puts "Exercise 5"

original = Enum.map [1, 2, 3, 4], fn x -> x + 2 end
IO.inspect original
short = Enum.map [1, 2, 3, 4], &(&1 + 2)
IO.inspect short

original = Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end
short = Enum.each [1, 2, 3, 4], &IO.inspect/1
