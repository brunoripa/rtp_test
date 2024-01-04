defmodule RPT.MixProject do
  use Mix.Project

  @version "0.1.0"
  def project do
    [
      app: :rpt,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RPT.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler_precompiled, "~>0.7.1", optional: true},
      {:rustler, "~> 0.30.0"}
    ]
  end
end
