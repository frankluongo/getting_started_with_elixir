defmodule PluralsightTweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :pluralsight_tweet,
      version: "0.1.0",
      elixir: "~> 1.6",
      # build_embedded: Mix.env == :prod,
      # start_permanent: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum, :extwitter],
      mod: {PluralsightTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
<<<<<<< HEAD
      {:credo, "~> 0.4.11"},
      {:quantum, "~> 1.8"},
      {:extwitter, "~> 0.7.2"},
      {:oauth, github: "tim/erlang-oauth"}
=======
      {:credo, "~> 0.9.3"},
      {:quantum, "~> 2.2"},
      {:timex, "~> 3.0"}
>>>>>>> 4ec5bd5ed808801d710dc7275e43f870db06db19
    ]
  end
end
