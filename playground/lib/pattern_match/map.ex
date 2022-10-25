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

  NOTE! Maps and structures match if pattern has
  less items or no items at all, but not lists
  """
  def play_good4 do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}
    %{"firstname" => "Erik"} = a
  end

  @doc """
  Returns map as a result of successful pattern match with map
  that has no elements.
  """
  def play_good5 do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}
    %{} = a
  end

  @doc """
  Returns map as a result of successful pattern match with wildcard.
  """
  def play_good6 do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{firstname: "Erik", lastname: _} = a
  end

  @doc """
  Returns "Erik" as a result of successful pattern match with assignment.
  """
  def play_good7 do
    a = %{firstname: "Erik", lastname: "Uus"}
    %{firstname: name, lastname: "Uus"} = a
    name
  end

  @doc """
  Returns "Erik" as a result of successful pattern match with assignment.
  """
  def play_good8 do
    a = %{firstname: "My name is Erik", lastname: "Uus"}
    %{firstname: "My name is " <> name, lastname: "Uus"} = a
    name
  end

  @doc """
  Returns "Match Error: Uus is not Uks" as a result of failed pattern match.
  """
  def play_bad do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{firstname: "Erik", lastname: "Uks"} = a
    rescue
      MatchError -> "Match Error: Uus is not Uks"
    end
  end

  @doc """
  Returns "Match Error: birthday key is missing" as a result of failed
  pattern match with a map that has more elements
  """
  def play_bad2 do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{firstname: "Erik", lastname: "Uus", birthday: "1973-07-30"} = a
    rescue
      MatchError -> "Match Error: birthday key is missing"
    end
  end

  @doc """
  Returns "Match Error: keys are not strings" as a result of failed
  pattern match because of matching atom keys with string keys.
  """
  def play_bad3 do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %{"firstname" => "Erik", "lastname" => "Uus"} = a
    rescue
      MatchError -> "Match Error: keys are not strings"
    end
  end

  @doc """
  Returns "Match error: firstname key is missing" as a result of
  failed pattern match.

  NOTE! When using struct this will match, as struct
  has all elements present.
  """
  def play_bad4 do
    a = %{lastname: "Uus"}

    try do
      %{firstname: name} = a
    rescue
      MatchError -> "Match error: firstname key is missing"
    end
  end
end

IO.inspect(PatternMatch.Map.play_good())
IO.inspect(PatternMatch.Map.play_good2())
IO.inspect(PatternMatch.Map.play_good3())
IO.inspect(PatternMatch.Map.play_good4())
IO.inspect(PatternMatch.Map.play_good5())
IO.inspect(PatternMatch.Map.play_good6())
IO.inspect(PatternMatch.Map.play_good7())
IO.inspect(PatternMatch.Map.play_good8())
IO.inspect(PatternMatch.Map.play_bad())
IO.inspect(PatternMatch.Map.play_bad2())
IO.inspect(PatternMatch.Map.play_bad3())
IO.inspect(PatternMatch.Map.play_bad4())
