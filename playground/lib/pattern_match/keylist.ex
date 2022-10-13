defmodule PatternMatch.Keylist do
  @moduledoc """
  This module provides examples of using pattern matching with list.
  """

  @doc """
  Returns list as a result of successful pattern match.
  """
  def play_good do
    a = [a: 1, b: 2, c: 3]
    [a: 1, b: 2, c: 3] = a
  end

  @doc """
  Returns list as a result of successful pattern match with wildcard.
  """
  def play_good2 do
    a = [a: 1, b: 2, c: 3]
    [a: 1, b: 2, c: _] = a
  end

  @doc """
  Returns 2 as a result of successful pattern match with assignment.
  """
  def play_good3 do
    a = [a: 1, b: 2, c: 3]
    [a: 1, b: b, c: 3] = a
    b
  end

  @doc """
  Returns nil as a result of failed pattern match.
  """
  def play_bad do
    a = [a: 1, b: 2, c: 3]

    try do
      [a: 1, b: 2, c: 4] = a
    rescue
      MatchError -> nil
    end
  end

  @doc """
  Returns nil as a result of failed pattern match.
  """
  def play_bad2 do
    a = [a: 1, b: 2, c: 3]

    try do
      [a: 1, b: 2, d: 3] = a
    rescue
      MatchError -> nil
    end
  end

  @doc """
  Returns nil as a result of failed pattern match.

  NOTE! Maps and structures match if pattern has
  less items or no items at all, but not lists
  """
  def play_bad3 do
    a = [a: 1, b: 2, c: 3]

    try do
      [a: 1, b: 2] = a
    rescue
      MatchError -> nil
    end
  end
end

IO.inspect(PatternMatch.Keylist.play_good())
IO.inspect(PatternMatch.Keylist.play_good2())
IO.inspect(PatternMatch.Keylist.play_good3())
IO.inspect(PatternMatch.Keylist.play_bad())
IO.inspect(PatternMatch.Keylist.play_bad2())
IO.inspect(PatternMatch.Keylist.play_bad3())
