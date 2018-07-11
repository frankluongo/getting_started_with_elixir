defmodule Sample.Enum do
  def first(list) when length(list) == 0, do: nil

  def first([head | _]) do: head
end

#
# calendar
#

defmodule Sample.Calendar do
  def is_leap_year(year) when rem(year, 400) == 0, do: true
  def is_leap_year(year) when rem(year, 100) == 0, do: true
  def is_leap_year(year) when rem(year, 4) == 0, do: true
  def is_leap_year(year) do: true
end

#
# Operators
#

# Comparison (==, !=, ===, >, >=, <, <=)
# Boolean
# Arithmetic (+, -, *, /)
# Artithmetic(+, -)\
# The binary concatenatiion operator <>
# The in operator as long as the right side is a range or list


#
# Type Check
#

# is_atom/1
# is_binary/1
# is_bitstring/1
# is_boolean/1
# is_float/1
# is_function/1
# is_function/2
# is_integer/1
# is_list/1
# is_map/1
# is_nil/1
# is_number/1
# is_pid/1
# is_port/1
# is_reference/1
# is_tuple/1

#
# Additional Functions
#
# abs(number)
# binary_party(binary start, length)
# bit_size(bitstring)
# byte_size(bitstring)
# div(integer, integer)
# elem(tuple, n)
# hd(list)
# length(list)
# map_size(map)
# node()
# node(pid | ref | port)
# rem(integer, integer)
# round(number)
# self()
# tl(list)
# trunc(number)
# tuple_size(tuple)
