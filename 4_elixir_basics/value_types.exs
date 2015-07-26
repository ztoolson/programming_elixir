# Integers
1234 # decimal form
0xcafe # hexadecimal
0o777 # octal
0b1010 # binary

# There is no limit on the size of integers
#factorial = factorial(10000) => 28462596809170545189...and so on for 35640 more digits...

# Floating-Point Numbers
# IEEE 754 double precision given them about 16 digits of accuracy
1.0
0.2456
0.314159e1
314159.0e-5

# Atoms
# Atoms are constants that represent something's name
:fred
:is_binary?
:var@2
:<>
:===
:"func/3"
:"long logn silver"

# Ranges
# Represented as `start`..`end` where start and end can be values of any type.
# If you want to iterate over the value in a range, the two extremes must be integers
1..5
"a".."z"

# Regular Expressions
# written as ~r{regexp}
IO.puts (Regex.run ~r{[aeiou]}, "caterpillar")
IO.puts (Regex.scan ~r{[aeiou]}, "caterpillar")
IO.puts (Regex.split ~r{[aeiou]}, "caterpillar")
IO.puts (Regex.replace ~r{[aeiou]}, "caterpillar", "*")
