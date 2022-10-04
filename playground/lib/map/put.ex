defmodule Map.Put do
  @moduledoc """
  This module provides examples of assigning value to map.
  """

  @doc """
  Returns %{birthday: "1973-07-30", firstname: "Erik", lastname: "Uus"}
  """
  def play_good do
    a = %{firstname: "Erik", lastname: "Uus"}
    # a[:birthday] gives error as in elixir =
    # is for pattern match and not for assign
    Map.put(a, :birthday, "1973-07-30")
  end

  @doc """
  Returns %{firstname: "Õnne", lastname: "Uus"}
  """
  def play_good2 do
    a = %{firstname: "Erik", lastname: "Uus"}
    Map.put(a, :firstname, "Õnne")
  end

  @doc """
  Same as previous but uses shortcut syntax
  Returns %{firstname: "Õnne", lastname: "Uus"}
  """
  def play_good3 do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{a | firstname: "Õnne"}
  end

  @doc """
  Returns error message as shortcut syntax can be used to
  change the value of the existing key only
  """
  def play_bad do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{a | birthday: "1973-07-30"}
    rescue
      KeyError -> "Using short syntax to put new key to map throws key error!"
    end
  end
end

IO.inspect(Map.Put.play_good())
IO.inspect(Map.Put.play_good2())
IO.inspect(Map.Put.play_good3())
IO.inspect(Map.Put.play_bad())
