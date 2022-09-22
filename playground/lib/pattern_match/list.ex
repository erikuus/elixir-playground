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
  Returns nil as a result of failed pattern match.
  """
  def play_bad do
    a = [1, 2, 3]

    try do
      [1, 2, 4] = a
    rescue
      MatchError -> nil
    end
  end

  @doc """
  Returns nil as a result of failed pattern match.
  """
  def play_bad2 do
    a = [1, 2, 3]

    try do
      [1, 2] = a
    rescue
      MatchError -> nil
    end
  end
end

IO.inspect(PatternMatch.List.play_good())
IO.inspect(PatternMatch.List.play_good2())
IO.inspect(PatternMatch.List.play_good3())
IO.inspect(PatternMatch.List.play_bad())
IO.inspect(PatternMatch.List.play_bad2())
