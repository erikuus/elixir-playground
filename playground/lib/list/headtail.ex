defmodule List.Headtail do
  @moduledoc """
  This module provides examples of getting head and tail of list.
  """

  @doc """
  Retruns 1 as head of list
  """
  def play_good do
    list = [1, 2, 3, 4, 5]
    [x | _y] = list
    x
  end

  @doc """
  Retruns [2, 3, 4, 5] as tail of list
  """
  def play_good2 do
    list = [1, 2, 3, 4, 5]
    [_x | y] = list
    y
  end

  @doc """
  Retruns 1 as head of list
  using hd function
  """
  def play_good3 do
    list = [1, 2, 3, 4, 5]
    hd(list)
  end

  @doc """
  Retruns [2, 3, 4, 5] as tail of list
  using tl function
  """
  def play_good4 do
    list = [1, 2, 3, 4, 5]
    tl(list)
  end

  @doc """
  Retruns [] as tail of list
  if there is single element in list
  """
  def play_good5 do
    list = [5]
    tl(list)
  end

  @doc """
  Retruns [1, 2, 3, 4, 5] as result
  of successful pattern match
  """
  def play_good6 do
    [1 | [2, 3, 4, 5]] = [1, 2, 3, 4, 5]
  end

  @doc """
  Retruns [0, 1, 2, 3, 4, 5] as result
  of adding 0 to list using head syntax
  """
  def play_good7 do
    list = [1, 2, 3, 4, 5]
    [0 | list]
  end
end

IO.inspect(List.Headtail.play_good())
IO.inspect(List.Headtail.play_good2())
IO.inspect(List.Headtail.play_good3())
IO.inspect(List.Headtail.play_good4())
IO.inspect(List.Headtail.play_good5())
IO.inspect(List.Headtail.play_good6())
IO.inspect(List.Headtail.play_good7())
