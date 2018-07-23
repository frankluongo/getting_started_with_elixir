defmodule PluralsightTweet.Scheduler do

  use Quantum.Scheduler,
    otp_app: :pluralsight_tweet

  def schedule_file(schedule, file) do
    Quantum.add_job(schedule, fn ->
    PluralsightTweet.FileReader.get_strings_to_tweet(file)
    |> PluralsightTweet.TweetServer.tweet end)
  end
end
