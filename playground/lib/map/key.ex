defmodule Map.Key do
  @moduledoc """
  Using atoms as map keys
  Elixir atoms are prefixed by a colon:
  %{ :method => "GET", :path => "/wildthings" }
  However, it's so common to use atoms as keys:
  %{ method: "GET", path: "/wildthings" }
  If the keys are anything but atoms, you must use the general => form:
  %{ "method" => "GET", "path" => "/wildthings" }
  """

  def play_good do
    %{:firstname => "Erik", :lastname => "Uus"}
    |> pattern_match
  end

  def play_bad do
    %{"firstname" => "Erik", "lastname" => "Uus"}
    |> pattern_match
  end

  @spec pattern_match(map()) :: map() | String.t()
  def pattern_match(arg)

  def pattern_match(%{firstname: "Erik", lastname: "Uus"} = map) do
    map
  end

  def pattern_match(_map) do
    "No match"
  end
end

IO.inspect(Map.Key.play_good())
IO.inspect(Map.Key.play_bad())
