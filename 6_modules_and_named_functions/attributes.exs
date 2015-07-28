# Attributes are not variabels in the conventional sense. Use them for
# configuration and metadata only. (Think of it like a ruby constant)
defmodule Example do
  @author "Zach Toolson"
  def get_author do
    @author
  end
end

IO.puts "Example was written by #{Example.get_author}"
