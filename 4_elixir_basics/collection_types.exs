# **Tuples**
# An ordered collection of value. Of course this is immutable
IO.puts "Tuples"
{ 1, 2 }
{ :ok, 42, "next" }
{ :error, :enoent }

# Typically an elixir tuple has 2 to 4 elements - any more you probably
# want to look at maps or structs

{ status, count, action } = { :ok, 42, "next" }
IO.puts status
IO.puts count
IO.puts action

# It is common for functions to return a tuple where the first elemen is the
# atom `:ok` if there were no errors

{ status, file } = File.open("value_types.exs")
IO.puts status
IO.puts inspect file
{ status, file } = File.open("non-existent-file")
IO.puts status

# **Lists**
# lists are not arrays, but linked lists under the hood
IO.puts "Lists"

[ 1, 2 ]
[ :ok, 42, "next" ]

concatenation = [ 1, 2, 3 ] ++ [ 4, 5, 6 ]
IO.puts inspect concatenation
difference = [1, 2, 3, 4 ] -- [ 2, 4 ]
IO.puts inspect difference

membership = 1 in [ 1, 2, 3, 4 ]
IO.puts inspect membership

# Keyword Lists
IO.puts "Keyword Lists"

[ name: "Dave", city: "Dallas", likes: "Programming" ]
# elixir converts to [ {:name, "Dave:}, {:city, "Dallas"}, {:likes, "Programming"} ]
IO.puts inspect [1, fred: 1, dave: 2 ] # => [ 1, {:fred, 1}, {:dave, 2} ]
IO.puts inspect { 1, fred: 1, date: 2 } # => { 1, [fred: 1, dave: 2] }

# **Maps**
IO.puts "Maps"

# %{ key => value, key => value }
states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
IO.puts inspect states

colors = %{ red: 0xff000, green: 0x00ff00, blue: 0x0000ff }
IO.puts inspect colors

# Difference between Keyword Lists and Maps?? Maps allow only one entry for a particular key, where keyword lists allow the key to be repeated.
# General Advice: Use Keyword Lists for things such as comand line parameters and passing around options,
# Use maps (or another data structure) when you want an associative array

# Accessing a Map
IO.puts inspect states["AL"]
IO.puts inspect states["TX"]

# If the keys are atoms you can use dot notation
IO.puts inspect colors.red
IO.puts inspect colors[:green]

# **Binaries**
IO.puts "Binaries"
# Data as  a sequence of bits and bytes. Binary literals are enclosed between << and >>
# Binaries are used to represent UTF strings
bin = << 1, 2 >>
IO.puts inspect bin
bin = << 3 :: size(2), 5 :: size(4), 1 :: size(2) >>
IO.puts :io.format("~-8.2b~n", :binary.bin_to_list(bin))

