def day_abbreviation3(day) do
  case day do
    :Monday -> "M"
    :Tuesday -> "Tu"
    :Wednesday -> "W"
    :Thursday -> "Th"
    :Friday -> "F"
    :Saturday -> "Sa"
    :Sunday -> "Su"
    _ -> "Invalid Day"
  end
end
defmodule Sample.Calendar do
  def describe_date(date) do
    case date do
     {1, _, _} -> "Brand new month!"
     {25, 12, _} -> "Merry Christmas"
     {25, month, _} -> "Only #{12 - month} months until Christmas"
     # As soon as it hits a match, it stops
     {31, 10, 1517} -> "The reformation is starting"
     {31, 10, _} -> "Happy Halloween"
     {4, 7, 1776} -> "The Declaration is signed!" # My addition
     {_, month, _} when month <= 12 -> "Just an average day"
     {_, _, _} -> "Invalid Month"
    end
  end
end

defmodule Tweet do
  def send_tweet(path) do
    case File.read(path) do
      {:ok, data} -> Tweet.send(data)
      {:error, error} -> IO.puts "Could not open file"
    end
  end
end
