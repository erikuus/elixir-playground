defmodule HandlingFile.Reader do
  @moduledoc """
  This module provides examples of reading files content.
  """

  alias HandlingFile.Handler

  @doc """
  Returns <h1>Test 1</h2>
  """
  def play_good do
    read_file("test1")
  end

  @doc """
  Returns <h1>Test 2</h2>
  """
  def play_good2 do
    read_file("test2")
  end

  @doc """
  Returns "File not found!"
  """
  def play_bad do
    read_file("test3")
  end

  defp read_file(filename) do
    Path.expand("./files")
    |> Path.join(filename <> ".html")
    |> File.read()
    |> Handler.handle_read_result()
  end
end

defmodule HandlingFile.Handler do
  @moduledoc """
  This module handles tuples returned by File.read().
  """
  def handle_read_result({:ok, file_contents}) do
    file_contents
  end

  def handle_read_result({:error, :enoent}) do
    "File not found!"
  end

  def handle_read_result({:error, reason}) do
    "Reading file failed: #{reason}!"
  end
end

IO.inspect(HandlingFile.Reader.play_good())
IO.inspect(HandlingFile.Reader.play_good2())
IO.inspect(HandlingFile.Reader.play_bad())
