defmodule PatternMatch.Basic do
  @moduledoc """
  This module provides basic examples of using pattern matching.
  """

  @doc """
  Returns 1 as a result of successful pattern match.
  """
  def play_good do
    a = 1
    1 = a
  end

  @doc """
  Returns "1" as a result of successful pattern match.
  """
  def play_good2 do
    a = "one/1"
    "one/" <> b = a
    b
  end

  @doc """
  Returns "Match Error: 2 is not 1" as a result of failed pattern match.
  """
  def play_bad do
    a = 2

    try do
      1 = a
    rescue
      MatchError -> "Match Error: #{a} is not 1"
    end
  end

  @doc """
  Returns "Match Error:´1 is not 2" as a result of failed pattern match.
  Function is using pin operator to match instead of assign.
  """
  def play_bad2 do
    a = 1

    try do
      # same as 2 = a
      ^a = 2
    rescue
      MatchError -> "Match Error: #{a} is not 2"
    end
  end
end

IO.inspect(PatternMatch.Basic.play_good())
IO.inspect(PatternMatch.Basic.play_good2())
IO.inspect(PatternMatch.Basic.play_bad())
IO.inspect(PatternMatch.Basic.play_bad2())
