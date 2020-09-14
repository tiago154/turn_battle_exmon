defmodule ExMon.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_mon,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      ## Tests

      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      # mod: {Start, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end
end

# defmodule Start do
#   use Application

#   def start(_type, _args) do
#     IO.puts("starting")

# "Tiago"
# |> ExMon.create_player(:chute, :soco, :curar)
# |> ExMon.start_game()

#     ExMon.make_move(:chute)
#     ExMon.make_move(:soco)
#     ExMon.make_move(:curar)

#     opts = [strategy: :one_for_one, name: ExMon.Supervisor]
#     Supervisor.start_link([], opts)
#   end
# end
