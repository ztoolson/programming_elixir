list = [ 1 | [ 2 | [ 3 | [] ] ] ] # [ 1, 2, 3 ]
IO.inspect list

[ head | tail ] = [ 1, 2, 3 ]
IO.puts "head: #{head}"
IO.puts "tail: #{inspect tail}"

# Don't be surprised if a string is printed as a list
# If all the values in a list represent printable characters,
# it displays the list as as string
string = [ 99, 97, 116 ] # cat
IO.inspect string
