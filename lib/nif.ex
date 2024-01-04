defmodule RPT.Nif do
  @moduledoc false

  source_url = Mix.Project.config()[:source_url]
  nif_version = Mix.Project.config()[:version]

  use RustlerPrecompiled,
    otp_app: :rpt,
    # base_url: "https://github.com/brunoripa/rtp_test/releases/download/v#{@nif_version}",
    base_url: "#{source_url}/releases/download/v#{nif_version}",
    version: nif_version

  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
