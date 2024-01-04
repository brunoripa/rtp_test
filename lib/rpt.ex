defmodule RPT do
  @moduledoc """
  Documentation for `RPT`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RPT.hello()
      :world

  """
  def hello do
    Jsonrs.encode(%{hello: "world"})
  end
end
