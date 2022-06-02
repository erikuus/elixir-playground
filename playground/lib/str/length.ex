defmodule Str.Length do
  @moduledoc """
  String Length vs. Content Length
  Elixir strings are represented internally as a sequence of bytes.
  Special characters take more than one byte to be represented in UTF-8.
  So, the content lenght of string can be greater than number of characters.
  """

  def play_latin do
    get_sizes("abcd")
  end

  def play_umlaut do
    get_sizes("õäüö")
  end

  def get_sizes(str) do
    "#{String.length(str)}  #{byte_size(str)}"
  end
end

IO.inspect(Str.Length.play_latin())
IO.inspect(Str.Length.play_umlaut())
