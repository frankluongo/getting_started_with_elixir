defmodule PluralsightTweet.FileReader do
  def get_strings_to_tweet(path) do
    File.read!(path) # exclamation will return an error if the path is not found
    |> String.split("\n") # Use the pipe operator to take the string from File.read and split it on new lines
    |> Enum.map(&String.trim/1) # Trim the white space at the beginning and end of each element that was split
    |> Enum.filter(&String.length(&1) <= 140) # make sure string is less than 140 characters
    # |> Enum.filter(fn str -> String.length(str) <= 140)
  end
end
