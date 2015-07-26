# Basic Pattern Matching
list = [ 1, 2, 3]
[a, b, c] = list
IO.puts a # 1
IO.puts b # 2
IO.puts c # 3


list = [1, 2, [ 3, 4, 5] ]
[a, b, c] = list
IO.puts a # 1
IO.puts b # 2
IO.puts Enum.join(c) # [ 3, 4, 5 ]


list = [ 1, 2, 3]
[a, 2, b] = list
IO.puts a # 1
IO.puts b # 3

# Which of the following will match?
a = [ 1, 2, 3 ]
a = 4
4 = a
#[ a, b ] = [ 1, 2, 3 ] # DOES NOT MATCH
a = [ [ 1, 2, 3 ] ]
[a] = [ [ 1, 2, 3 ] ]
# [[a]] = [ [ 1, 2, 3 ] ] # DOES NOT MATCH

# Ignoring a Value with _ (underscore)
[ 1, _, _ ] = [ 1, 2 , 3 ]
[ 1, _, _ ] = [ 1, "cat" , "dog" ]

# Variable Bind Once (per Match)
[ a, a ] = [ 1, 1 ]  # a is initially matched with one, and then the second a is used to match the second 1 on the right side

#[ a, a ] = [ 1, 2 ] # MatchError no match of right hand side value [ 1, 2 ]

# Vairables can be rebound in a subsequent match
a = 1
IO.puts a # 1
[ 1, a, 3 ] = [ 1, 2, 3 ]
IO.puts a # 2
