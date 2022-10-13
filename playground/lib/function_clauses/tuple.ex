defmodule FunctionClauses.Tuple do
  @moduledoc """
  This module provides examples of tuples using
  pattern matching with function clauses.
  """

  @doc """
  Returns "one is one" as a result of pattern match.
  """
  def play_good do
    f({"one", 1})
  end

  @doc """
  Returns "two is two" as a result of pattern match.
  """
  def play_good2 do
    f({"two", 2})
  end

  @doc """
  Returns "eagle is bird" as a result of pattern match.
  """
  def play_good3 do
    f({"eagle", "bird"})
  end

  @doc """
  Returns "dog is dog" as a result of pattern match.
  """
  def play_good4 do
    f({"dog"})
  end

  defp f({a, 1}) do
    "#{a} is one"
  end

  defp f({a, 2}) do
    "#{a} is two"
  end

  defp f({a, b}) do
    "#{a} is #{b}"
  end

  defp f({a}) do
    "#{a} is dog"
  end
end

IO.inspect(FunctionClauses.Tuple.play_good())
IO.inspect(FunctionClauses.Tuple.play_good2())
IO.inspect(FunctionClauses.Tuple.play_good3())
IO.inspect(FunctionClauses.Tuple.play_good4())
