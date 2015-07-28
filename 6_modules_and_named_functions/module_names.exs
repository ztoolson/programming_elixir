# Elixir treats names with an uppercase letter as module names, and internally
# converts them to an atom. Example: IO => Elixir.IO
IO.puts "is_atom IO: #{is_atom IO}"
IO.puts "to_strong IO: #{to_string IO}"
IO.puts "\"Elixer.IO\" === IO: #{"Elixir.IO" === IO}" # => book says this is true, but obviously not

# Functions from erlang
IO.puts :io.format("The number is ~3.1f~n", [5.678])
