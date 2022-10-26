defmodule List.Recursion do
  @moduledoc """
  This module provides examples of how to use head and tail for recursion.
  """

  @doc """
  Returns
  1
  2
  3
  4
  5
  []
  """
  def play_good do
    loop([1, 2, 3, 4, 5])
  end

  defp loop([head | tail]) do
    IO.inspect(head)
    loop(tail)
  end

  defp loop([]), do: []

  @doc """
  Returns 15 as summa of all values of list
  """
  def play_good2 do
    sum([1, 2, 3, 4, 5], 0)
  end

  defp sum([h | t], s) do
    sum(t, s + h)
  end

  defp sum([], s), do: s

  @doc """
  Returns [3, 6, 9, 12, 15] as list of all values trippled
  """
  def play_good3 do
    tripple([1, 2, 3, 4, 5], [])
  end

  defp tripple([head | tail], trippled_list) do
    tripple(tail, [head * 3 | trippled_list])
  end

  defp tripple([], trippled_list) do
    trippled_list |> Enum.reverse()
  end
end

IO.inspect(List.Recursion.play_good())
IO.inspect(List.Recursion.play_good2())
IO.inspect(List.Recursion.play_good3())
