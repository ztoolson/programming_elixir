# A single function definition lets you define different implementations

# Define a function with two different body implemetations based
# on the inputs. File.open returns a tuple with the result of the
# file, and either an error of the file. We want our function to
# do something different depending on whther or not the file read
# successful.
handle_open = fn
                {:ok, file} -> "Read data: #{IO.read(file, :line)}"
                {_, error}  -> "Error: #{:file.format_error(error)}"
              end

result = handle_open.(File.open("README.md")) # this file exists
IO.puts result

result = handle_open.(File.open("non-existant")) # this file does not exist
IO.puts result
