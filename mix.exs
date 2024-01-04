defmodule RPT.MixProject do
  use Mix.Project

  def project do
    [
      app: :rpt,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      nif_version: "0.1.0",
      source_url: "https://github.com/brunoripa/rtp_test"
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
      {:rustler, "~> 0.30.0"},
      {:jsonrs, "0.3.3"}
    ]
  end
end
