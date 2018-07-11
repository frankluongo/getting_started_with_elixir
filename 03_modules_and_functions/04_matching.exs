#
#
#

defmodule Sample.Enum do

  # long version
  def first([]) do
    nil
  end

  def first([head | _]) do # We removed "tail" and replaced it with an underscore because Elixir warned us that we don't need it
    head
  end

  # quick version

  def first([]) do: nil

  def first([head | _]) do: head

end
