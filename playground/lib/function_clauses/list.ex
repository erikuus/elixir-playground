defmodule FunctionClauses.List do
  @moduledoc """
  This module provides examples of list using
  pattern matching with function clauses.

  Note that this:

    f(["pontu", "dingo", "muri"])

  would not match any given function clause, because
  lists unlike maps and structures match only if
  there are same number of items.
  """

  @doc """
  Returns "one is one" as a result of pattern match.
  """
  def play_good do
    f(["one", 1])
  end

  @doc """
  Returns "two is two" as a result of pattern match.
  """
  def play_good2 do
    f(["two", 2])
  end

  @doc """
  Returns "eagle is bird" as a result of pattern match.
  """
  def play_good3 do
    f(["eagle", "bird"])
  end

  @doc """
  Returns "dog is dog" as a result of pattern match.
  """
  def play_good4 do
    f(["dog"])
  end

  @doc """
  Returns "b comes after a" as a result of pattern match.
  """
  def play_good5 do
    f(["ab"])
  end

  defp f([a, 1]) do
    "#{a} is one"
  end

  defp f([a, 2]) do
    "#{a} is two"
  end

  defp f([a, b]) do
    "#{a} is #{b}"
  end

  defp f(["a" <> b]) do
    "#{b} comes after a"
  end

  defp f([a]) do
    "#{a} is dog"
  end
end

IO.inspect(FunctionClauses.List.play_good())
IO.inspect(FunctionClauses.List.play_good2())
IO.inspect(FunctionClauses.List.play_good3())
IO.inspect(FunctionClauses.List.play_good4())
IO.inspect(FunctionClauses.List.play_good5())
