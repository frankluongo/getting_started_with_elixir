# In IEX

  # list = [1,2,3,4]
  # Enum.map(list, fn(x) -> x*x end)
  # Enum.reduce(list, 0, fn(x, acc) -> acc + x end)
  # Enum.map(list, &(&1 * 1))
  # Enum.reduce(list, 0, &(&1 + &2))


# In .exs

  defmodule Sample.Utils do
    def square(a) do: a * a
    def sum(a,b) do: a + b
    def custom_func(a, f) do
      f.(a) # eff dot a because that's how you call an anonymous function
    end
  end

  # in IEX

    Sample.Utils.custom_func(1, fn(x) -< IO.puts(x) end)
