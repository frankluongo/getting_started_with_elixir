#
# First Class Citizen
# In Elixir, functions are first class citizens because they can be passed as arguments to other functions, can be returned as the value from other functions and can be assigned to variables
#

In IEX

  list = [1, 2, 3, 4]
  Enum.map(list, &Sample.Utils.square/1)
  Enum.reduce(list, 0, $Sample.Utils.sum/2)

