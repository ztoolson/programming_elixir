# Copying Data
list1 = [ 3, 2, 1 ]
list2 = [ 4 | list1 ]
# Since elixir knows that list1 is immutable, it simple constructs a new list
# with a head of 4 and a tail of list1.
IO.puts Enum.join(list2)

# Note about garbage collection. If you write your code using lots and lots
# of processes, each process has its own heap. As a result each process can
# be garbaged collected when its heap filles up, or if the process ends before
# the heap fills up, all data in that process is discarded.

# Coding with Immutable Data
name = "elixir"
IO.puts name
cap_name = String.capitalize name # We transform the string name using the fuction String.capitalize to create a new string
IO.puts cap_name
IO.puts name
