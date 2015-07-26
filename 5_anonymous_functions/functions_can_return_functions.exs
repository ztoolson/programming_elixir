# Functions that return functions
fun1 = fn -> 
         fn -> "Hello" end
       end
IO.puts fun1.().()

# Functions remember their original environment
greeter = fn name -> (fn -> "Hello #{name}" end) end
zach_greeter = greeter.("Zach")
IO.puts zach_greeter.()

# Parameterized Functions
add_n = fn n -> (fn other -> n + other end) end
add_two = add_n.(2)
add_five = add_n.(5)
IO.puts add_two.(3)
IO.puts add_five.(7)
