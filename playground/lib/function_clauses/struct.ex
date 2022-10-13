defmodule FunctionClauses.Struct do
  @moduledoc """
  This module provides examples of structs using
  pattern matching with function clauses.
  """

  defmodule Word do
    defstruct first: "", second: "", third: ""
  end

  @doc """
  Returns "one is one" as a result of pattern match.
  """
  def play_good do
    f(%Word{first: "one", second: 1})
  end

  @doc """
  Returns "two is two" as a result of pattern match.
  """
  def play_good2 do
    f(%Word{first: "two", second: 2})
  end

  @doc """
  Returns "eagle is a bird" as a result of pattern match.
  """
  def play_good3 do
    f(%Word{first: "eagle", second: "bird"})
  end

  @doc """
  Returns "dog is a dog" as a result of pattern match.
  """
  def play_good4 do
    f(%Word{first: "dog"})
  end

  @doc """
  Returns "pontu is a dog" as a result of pattern match.

  NOTE! Maps and structures match if pattern has
  less items or no items at all, but not lists.
  """
  def play_good5 do
    f(%Word{first: "pontu", second: "dingo", third: "muri"})
  end

  @doc """
  Returns " is a dog" as a result of pattern match.

  NOTE! When using map this returns "dog is a pet",
  but as struct has all elements present, it will
  match penultimate clause. 
  """
  def play_good6 do
    f(%Word{second: "pet"})
  end

  defp f(%Word{first: a, second: 1}) do
    "#{a} is one"
  end

  defp f(%Word{first: a, second: 2}) do
    "#{a} is two"
  end

  defp f(%Word{first: "eagle", second: a}) do
    "eagel is a #{a}"
  end

  defp f(%Word{first: a}) do
    "#{a} is a dog"
  end

  defp f(%Word{second: a}) do
    "dog is a #{a}"
  end
end

IO.inspect(FunctionClauses.Struct.play_good())
IO.inspect(FunctionClauses.Struct.play_good2())
IO.inspect(FunctionClauses.Struct.play_good3())
IO.inspect(FunctionClauses.Struct.play_good4())
IO.inspect(FunctionClauses.Struct.play_good5())
IO.inspect(FunctionClauses.Struct.play_good6())
