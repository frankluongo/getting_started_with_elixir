defmodule Sample.Enum do

  def first(list, val \\ nil)
  def first([head | _]) do: val
  def first([], val), do: val

  def add(list, val \\ 0) do # \\ specifies a default value
    [val | list]
  end
end
