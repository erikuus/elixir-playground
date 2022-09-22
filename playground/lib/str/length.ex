defmodule Str.Length do
  @moduledoc """
  This module provides examples of string length vs content length.

  Elixir strings are represented internally as a sequence of bytes.
  Special characters take more than one byte to be represented in UTF-8.
  So, the content lenght of string can be greater than number of characters.
  """

  @doc """
  Returns string length and content length of latin characters.
  """
  def play_latin do
    get_sizes("abcd")
  end

  @doc """
  Returns string length and content length of umlaut characters.
  """
  def play_umlaut do
    get_sizes("õäüö")
  end

  @spec get_sizes(String.t()) :: String.t()
  def get_sizes(str) do
    "#{String.length(str)}  #{byte_size(str)}"
  end
end

IO.inspect(Str.Length.play_latin())
IO.inspect(Str.Length.play_umlaut())
