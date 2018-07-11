defmodule ModulePlayground do
  import IO, only: [puts: 1] # tells Elixir we only want this one function of puts
  import Kernel, except: [inspect: 1]

  alias ModulePlayground.Misc.Util.Math, as: MyMath # ", as: MyMath" is optional

  require Integer

  def say_here do
    inspect "I'm Here"
  end

  def inspect(param1) do
    puts "Starting Output"
    puts param1
    puts "Ending output"
  end

  def print_sum do
    MyMath.add(1, 2)
  end

  def print_is_even(num) do
    puts "Is #{num} even? #{Integer.is_even(num)}"
  end
end


defmodule ModulePlayground.Misc.Util.Math do
  def add(a, b) do
    a + b
  end
end
