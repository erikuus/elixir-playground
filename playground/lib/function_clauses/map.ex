defmodule FunctionClauses.Map do
  @moduledoc """
  This module provides examples of maps using
  pattern matching with function clauses.
  """

  @doc """
  Returns "one is one" as a result of pattern match.
  """
  def play_good do
    f(%{first: "one", second: 1})
  end

  @doc """
  Returns "two is two" as a result of pattern match.
  """
  def play_good2 do
    f(%{first: "two", second: 2})
  end

  @doc """
  Returns "eagle is a bird" as a result of pattern match.
  """
  def play_good3 do
    f(%{first: "eagle", second: "bird"})
  end

  @doc """
  Returns "dog is a dog" as a result of pattern match.
  """
  def play_good4 do
    f(%{first: "dog"})
  end

  @doc """
  Returns "pontu is a dog" as a result of pattern match.

  NOTE! Maps and structures match if pattern has
  less items or no items at all.
  """
  def play_good5 do
    f(%{first: "pontu", second: "dingo", third: "muri"})
  end

  @doc """
  Returns "dog is a pet" as a result of pattern match.

  NOTE! When using struct this returns " is a dog".
  As struct has all elements present, it will
  match penultimate clause.
  """
  def play_good6 do
    f(%{second: "pet"})
  end

  @doc """
  Returns "b comes after a" as a result of pattern match.
  """
  def play_good7 do
    f(%{second: "ab"})
  end

  defp f(%{first: a, second: 1}) do
    "#{a} is one"
  end

  defp f(%{first: a, second: 2}) do
    "#{a} is two"
  end

  defp f(%{first: "eagle", second: a}) do
    "eagel is a #{a}"
  end

  defp f(%{first: a}) do
    "#{a} is a dog"
  end

  defp f(%{second: "a" <> b}) do
    "#{b} comes after a"
  end

  defp f(%{second: a}) do
    "dog is a #{a}"
  end
end

IO.inspect(FunctionClauses.Map.play_good())
IO.inspect(FunctionClauses.Map.play_good2())
IO.inspect(FunctionClauses.Map.play_good3())
IO.inspect(FunctionClauses.Map.play_good4())
IO.inspect(FunctionClauses.Map.play_good5())
IO.inspect(FunctionClauses.Map.play_good6())
IO.inspect(FunctionClauses.Map.play_good7())
