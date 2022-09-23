defmodule PatternMatch.Map do
  @moduledoc """
  This module provides examples of using pattern matching with map.
  """

  @doc """
  Returns map as a result of successful pattern match.
  """
  def play_good do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{firstname: "Erik", lastname: "Uus"} = a
  end

  @doc """
  Returns map as a result of successful pattern match with colon keys.
  """
  def play_good2 do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{:firstname => "Erik", :lastname => "Uus"} = a
  end

  @doc """
  Returns map as a result of successful pattern match with string keys.
  """
  def play_good3 do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}
    %{"firstname" => "Erik", "lastname" => "Uus"} = a
  end

  @doc """
  Returns map as a result of successful pattern match with map
  that has less elements.
  """
  def play_good4 do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}
    %{"firstname" => "Erik"} = a
  end

  @doc """
  Returns map as a result of successful pattern match with wildcard.
  """
  def play_good5 do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{firstname: "Erik", lastname: _} = a
  end

  @doc """
  Returns "Erik" as a result of successful pattern match with assignment.
  """
  def play_good6 do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{firstname: name, lastname: "Uus"} = a
    name
  end

  @doc """
  Returns nil as a result of failed pattern match.
  """
  def play_bad do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{firstname: "Erik", lastname: "Uks"} = a
    rescue
      MatchError -> nil
    end
  end

  @doc """
  Returns nil as a result of failed pattern match with a map
  that has more elements
  """
  def play_bad2 do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{firstname: "Erik", lastname: "Uus", birthday: "1973-07-30"} = a
    rescue
      MatchError -> nil
    end
  end

  @doc """
  Returns nil as a result of failed pattern match
  because of matching atom keys with string keys.
  """
  def play_bad3 do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{"firstname" => "Erik", "lastname" => "Uus"} = a
    rescue
      MatchError -> nil
    end
  end
end

IO.inspect(PatternMatch.Map.play_good())
IO.inspect(PatternMatch.Map.play_good2())
IO.inspect(PatternMatch.Map.play_good3())
IO.inspect(PatternMatch.Map.play_good4())
IO.inspect(PatternMatch.Map.play_good5())
IO.inspect(PatternMatch.Map.play_good6())
IO.inspect(PatternMatch.Map.play_bad())
IO.inspect(PatternMatch.Map.play_bad2())
IO.inspect(PatternMatch.Map.play_bad3())
