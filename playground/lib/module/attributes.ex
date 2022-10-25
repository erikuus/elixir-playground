defmodule Module.Attributes do
  @moduledoc """
  This module demonstrates that the order in which the module
  attributes and the functions are defined matters.
  """

  @name "nicole"

  @doc """
  Returns "nicole"
  """
  def play_good, do: @name

  @name "mike"

  @doc """
  Returns "mike"
  """
  def play_good2, do: @name
end

IO.inspect(Module.Attributes.play_good())
IO.inspect(Module.Attributes.play_good2())
