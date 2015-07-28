# Find in the library functions to do the following, and then use each.

# Convert a float to a string with two decimal digits.(Erlang)
IO.puts :io.format("~.2f~n", [2.555])

# Get the value of an operating system environment variable.(Elixir)
IO.puts System.get_env["USER"]

# Return the extension component of a file name (so return .exs if
# given "dave/test.exs").(Elixir)
IO.puts Path.extname("dave/test.exs")

# Return the process's current working directory.(Elixir)
IO.puts System.cwd

# Convert a string containing JSON into Elixir data structures. (Just find, don't install)
# https://github.com/cblage/elixir-json

# Execute a command in your operating system's shell.
System.cmd "echo", ["hello"], into: IO.stream(:stdio, :line)
