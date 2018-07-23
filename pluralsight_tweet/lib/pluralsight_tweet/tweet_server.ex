defmodule PluralsightTweet.TweetServer do
  use GenServer # injects code at compile time
    # GenServer is a behavior - which define a set of functions to be implemented and ensures that a module implements ALL functions in that set

  def start_link() do
    # Hard Code the name of the server
    GenServer.start_link(__MODULE__, :ok, name: :tweet_server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast({:tweet, tweet}, _) do
    PluralsightTweet.Tweet.send(tweet)
    {:noreply, %{}}
  end

  def tweet(tweet) do
    GenServer.cast(:tweet_server, {:tweet, tweet})
  end

end
