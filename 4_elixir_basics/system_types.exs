# PIDs
# A PID is a reference to a local or remote process, and a port is a reference
# to a resource (typically external to the application) that you'll be reading
# or writing

# The PID of the current process is available by calling `self`. A new PID is 
# created when you spawn a new process. More details to come
IO.puts inspect self

# References
# The function `make_ref` creates a globally unique reference; no other
# reference will be equal to it.
