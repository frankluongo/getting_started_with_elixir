#
# To understand what recursion is, you must first understand recursion
# Used to iterate over a list
#

defmodule Sample.Enum do
  def first([]), do: nil
  def first([head | _]), do: head

  def map([], _). do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end
end

# IEX
  Sample.Enum.map([1,2,3], &(&1 * 2))
# IEX
