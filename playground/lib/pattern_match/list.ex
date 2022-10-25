defmodule PatternMatch.List do
  @moduledoc """
  This module provides examples of using pattern matching with list.
  """

  @doc """
  Returns list as a result of successful pattern match.
  """
  def play_good do
    a = [1, 2, 3]
    [1, 2, 3] = a
  end

  @doc """
  Returns list as a result of successful pattern match with wildcard.
  """
  def play_good2 do
    a = [1, 2, 3]
    [1, 2, _] = a
  end

  @doc """
  Returns 2 as a result of successful pattern match with assignment.
  """
  def play_good3 do
    a = [1, 2, 3]
    [1, b, 3] = a
    b
  end

  @doc """
  Returns "2" as a result of successful pattern match with assignment.
  """
  def play_good4 do
    a = [1, "two/2", 3]
    [1, "two/" <> b, 3] = a
    b
  end

  @doc """
  Returns %{one: 1, two: 2} as a result of successful pattern match with assignment.
  """
  def play_good5 do
    a = [1, %{one: 1, two: 2}]
    [1, %{} = b] = a
    b
  end

  @doc """
  Returns "Match error: 3 is not 4" as a result of failed pattern match.
  """
  def play_bad do
    a = [1, 2, 3]

    try do
      [1, 2, 4] = a
    rescue
      MatchError -> "Match error: 3 is not 4"
    end
  end

  @doc """
  Returns "Match error: length is not same" as a result of failed pattern match.
  """
  def play_bad2 do
    a = [1, 2, 3]

    try do
      [1, 2] = a
    rescue
      MatchError -> "Match error: length is not same"
    end
  end
end

IO.inspect(PatternMatch.List.play_good())
IO.inspect(PatternMatch.List.play_good2())
IO.inspect(PatternMatch.List.play_good3())
IO.inspect(PatternMatch.List.play_good4())
IO.inspect(PatternMatch.List.play_good5())
IO.inspect(PatternMatch.List.play_bad())
IO.inspect(PatternMatch.List.play_bad2())
