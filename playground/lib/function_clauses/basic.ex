defmodule FunctionClauses.Basic do
  @moduledoc """
  This module provides basic examples of using pattern matching
  with function clauses.

  Note that this:

    f("pontu", "dingo", "muri")

  would not match any given function clause, because
  arguments unlike maps and structures match only if
  there are same number of arguments.
  """

  @doc """
  Returns "one is one" as a result of pattern match.
  """
  def play_good do
    f("one", 1)
  end

  @doc """
  Returns "two is two" as a result of pattern match.
  """
  def play_good2 do
    f("two", 2)
  end

  @doc """
  Returns "eagle is bird" as a result of pattern match.
  """
  def play_good3 do
    f("eagle", "bird")
  end

  @doc """
  Returns "dog is dog" as a result of pattern match.
  """
  def play_good4 do
    f("dog")
  end

  @doc """
  Returns "four cats on the roof" as a result of pattern match.
  """
  def play_good5 do
    f("4/cats", "on the roof")
  end

  defp f(a, 1) do
    "#{a} is one"
  end

  defp f(a, 2) do
    "#{a} is two"
  end

  defp f("4/" <> a, b) do
    "four #{a} #{b}"
  end

  defp f(a, b) do
    "#{a} is #{b}"
  end

  defp f(a) do
    "#{a} is dog"
  end
end

IO.inspect(FunctionClauses.Basic.play_good())
IO.inspect(FunctionClauses.Basic.play_good2())
IO.inspect(FunctionClauses.Basic.play_good3())
IO.inspect(FunctionClauses.Basic.play_good4())
IO.inspect(FunctionClauses.Basic.play_good5())
