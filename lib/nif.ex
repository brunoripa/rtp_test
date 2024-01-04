defmodule RPT.Nif do
  @moduledoc false

  use RustlerPrecompiled,
    otp_app: :rpt,
    crate: "rustdep",
    base_url: "https://github.com/brunoripa/rtp_test/releases/download/#{version}/librustdep.so",
    version: "untagged-14c87d33d23a964b8926",

  def add(a, b), do: :rustdep.add(a, b)
end
