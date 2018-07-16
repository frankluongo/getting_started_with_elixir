defmodule Sample.Enum do
  def first([]), do: nil
  def first([head | _]), do: head
end

# OR

defmodule Sample.Enum do
  def first(list) do
    if (length(list) == 0) do
      nil
    else
      hd(list)
    end
  end
end
