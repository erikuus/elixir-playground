defmodule ImmutableData.Map do
  @moduledoc """
  This module provides examples of immutable data.
  """

  @doc """
  Returns %{birthday: "1973-07-30", firstname: "Erik", lastname: "Uus"}
  """
  def play_good do
    a = %{firstname: "Erik", lastname: "Uus"}
    Map.put(a, :birthday, "1973-07-30")
  end

  @doc """
  Returns %{firstname: "Erik", lastname: "Uus"}
  as data are immutable in elixir
  """
  def play_good2 do
    a = %{firstname: "Erik", lastname: "Uus"}
    Map.put(a, :birthday, "1973-07-30")
    a
  end
end

IO.inspect(ImmutableData.Map.play_good())
IO.inspect(ImmutableData.Map.play_good2())
