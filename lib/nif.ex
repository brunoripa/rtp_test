defmodule RPT.Nif do
  @moduledoc false

  @version "0.1.0"

  use RustlerPrecompiled,
    otp_app: :rpt,
    crate: "rustdep",
    # base_url: "https://github.com/brunoripa/rtp_test/releases/download/v#{@version}",
    base_url:
      "https://github.com/brunoripa/rtp_test/actions/runs/7409228381/artifacts/1147448991",
    version: "0.1.0"

  def add(a, b), do: :rustdep.add(a, b)
end
