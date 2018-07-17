# Tail recursion is when the last operation a function performs is a recursion
# - It's more performant but returns items in reverse order

defmodule Sample.Enum do
  import Kernel, except: [length: 1]

  def first([]) do,: nil
  def first([head | tail], f), do: [f.(head) | map(tail, f)]

  # Addition in last function...

  def length([]), do: 0
  def length([_ | tail]), do: 1 + length(tail)

  # Recursion in last function...

  def other_length([_ | tail]), do: other_length(tail, 1)
  def other_length([], len), do: len
  def other_length([_ | tail], len), do: other_length(tail, len + 1)

  # You need a reverse function to make it work

  def reverse(l), do: reverse(l, [])
  def reverse([], reversed), do: reversed
  def reverse([head | tail], reversed), do: reverse(tail, [head | reversed])

  # Tail recursion returns the values in the reverse order

  def other_map([head | tail], f), do: other_map(tail, f, [f.(head)])
  def other_map([], _, result), do: result
  def other_map([head | tail], f, result), do: other_map(tail, f, [f.(head) | result])

end


# IEX
  Sample.Enum.other_map([1,2,3], &(&1 * 2))
# IEX