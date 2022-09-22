defmodule PatternMatch.Tuple do
  @moduledoc """
  This module provides examples of using pattern matching with tuple.
  """

  @doc """
  Returns tuple as a result of successful pattern match.
  """
  def play_good do
    a = {:ok, 1, "2"}
    {:ok, 1, "2"} = a
  end

  @doc """
  Returns tuple as a result of successful pattern match with wildcard.
  """
  def play_good2 do
    a = {:ok, 1, "2"}
    {:ok, 1, _} = a
  end

  @doc """
  Returns 1 as a result of successful pattern match with assignment.
  """
  def play_good3 do
    a = {:ok, 1, "2"}
    {:ok, b, "2"} = a
    b
  end

  @doc """
  Returns nil as a result of failed pattern match.
  """
  def play_bad do
    a = {:ok, 1, "2"}

    try do
      {:error, 1, "2"} = a
    rescue
      MatchError -> nil
    end
  end

  @doc """
  Returns nil as a result of failed pattern match.
  """
  def play_bad2 do
    a = {:ok, 1, "2"}

    try do
      {:ok, 1} = a
    rescue
      MatchError -> nil
    end
  end
end

IO.inspect(PatternMatch.Tuple.play_good())
IO.inspect(PatternMatch.Tuple.play_good2())
IO.inspect(PatternMatch.Tuple.play_good3())
IO.inspect(PatternMatch.Tuple.play_bad())
IO.inspect(PatternMatch.Tuple.play_bad2())
