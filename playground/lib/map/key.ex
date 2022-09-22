defmodule Map.Key do
  @moduledoc """
  This module provides examples of map keys.
  """

  @doc """
  Returns map where keys are atoms.
  """
  def play_good do
    %{firstname: "Erik", lastname: "Uus"}
  end

  @doc """
  Returns map where keys are atoms prefixed by a colon.
  """
  def play_good2 do
    %{:firstname => "Erik", :lastname => "Uus"}
  end

  @doc """
  Returns map where keys are strings.
  """
  def play_good3 do
    %{"firstname" => "Erik", "lastname" => "Uus"}
  end
end

IO.inspect(Map.Key.play_good())
IO.inspect(Map.Key.play_good2())
IO.inspect(Map.Key.play_good3())
