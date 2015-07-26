a = 1
b = 1.0

# Comparison Operators
IO.puts a === b
IO.puts a !== b
IO.puts a == b
IO.puts a != b
IO.puts a > b
IO.puts a >= b
IO.puts a < b
IO.puts a <= b

# Boolean Operators, expect true or false as first argument
IO.puts true or b
IO.puts true and b
IO.puts not true

# Relaxed boolean operators
IO.puts a || b # a if a is truthy, otherwise b
IO.puts a && b # b if a is truthy, otherwise a
IO.puts !a # false if a is truthy, otherwise true

# Arithmetic operators
# +
# -
# *
# / results in floating point results
# div
# rem

# Join operators
# binary1 <> binary2 # concatenates two binarys (binarys include strings)
# list1 ++ list2 # concatenate two lists
# list1 -- list2 #return elements in list1 not in list2

# the `in` operator
# a in enum (list or range)
