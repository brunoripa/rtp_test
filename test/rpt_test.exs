defmodule RPTTest do
  use ExUnit.Case
  doctest RPT

  test "greets the world" do
    assert RPT.hello() == :world
  end
end
