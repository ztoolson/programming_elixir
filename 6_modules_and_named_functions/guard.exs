# You can only use guard clauses that use a comparison operators,
# boolean and negation operators, arithmetic operators, join operators,
# the in operator, type-check functions, or other functions that return
# true or false.
defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} is a list"
  end
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is a atom"
  end
end

Guard.what_is(99)
Guard.what_is(:cat)
Guard.what_is([1, 2, 3])
