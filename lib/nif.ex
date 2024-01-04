defmodule RPT.Nif do
  @moduledoc false

  @nif_version "0.1.0"

  use RustlerPrecompiled,
    otp_app: :rpt,
    crate: "rpt",
    # base_url: "https://github.com/brunoripa/rtp_test/releases/download/v#{@nif_version}",
    base_url: "https://storage.googleapis.com/test_rustler/",
    version: "0.1.0"

  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
