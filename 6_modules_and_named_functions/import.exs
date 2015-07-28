defmodule Example do
  def func1 do
    List.flatten [1,[2,3],4]
  end

  def func2 do
    import List, only: [flatten: 1]
    flatten [5,[6,7],8]
  end
end

defmodule AliasExample do
  def func do
    # Alias by defaults to the last part of the module name
    alias Mix.Tasks.Doctest # =>  alias Mix.Tasks.Doctest, as: Doctest
    doc = Doctest.setup
    doc.run(Doctest.defaults)
  end
end
