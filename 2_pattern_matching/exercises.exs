# Which of the following will match?

#[ a, b, a ] = [ 1, 2 ,3 ]
# This will not match because a gets assigned to 1, and then attempts to get 
# assigned to 3 in the same match statement.

#[ a, b, a ] = [ 1, 1, 2 ]
# This will not match because a gets assigned to 1, and then attempts to get 
# assigned to 2 in the same match statement.

[ a, b, a ] = [ 1, 2 ,1 ]
# This will match because a gets assigned to 1. b gets assigned to 2, and then
# the value of a is matched to 1 again so this passes.


# If you assume the variable a initially contains the value 2, which of the 
# following will match?
a = 2

#[ a, b ,a ] = [ 1, 2, 3 ] # a can be rebound to the value 1, but still fails for the same reason as the previous exercise.
#[ a, b ,a ] = [ 1, 1, 2 ] # also fails. see previous exercise
a = 1 # This passes because a can be rebound to 1

# Reset a value
a = 2
^a = 2 # do not rebind a, just use it's value for matching. This passes
#^a = 1 # This fails since the value of a does not match 1
^a = 2 - a # This evaluates to 2 = 0, which is not a match.
