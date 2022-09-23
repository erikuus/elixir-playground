defmodule Map.Get do
  @moduledoc """
  This module provides examples of accessing map values with atoms vs strings.

  The square-bracket syntax works with all maps.
  When the keys are atoms, you can also use the dot notation.
  """

  @doc """
  Returns fullname using square-bracketed string keys
  """
  def play_good do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}
    a["firstname"] <> " " <> a["lastname"]
  end

  @doc """
  Returns fullname using square-bracketed atom keys
  """
  def play_good2 do
    a = %{:firstname => "Erik", :lastname => "Uus"}
    a[:firstname] <> " " <> a[:lastname]
  end

  @doc """
  Returns fullname using dot notation
  """
  def play_good3 do
    a = %{:firstname => "Erik", :lastname => "Uus"}
    a.firstname <> " " <> a.lastname
  end

  @doc """
  Returns nil as a result of using dot notation with string keys.
  """
  def play_bad do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}

    try do
      a.firstname <> " " <> a.lastname
    rescue
      KeyError -> nil
    end
  end

  @doc """
  Returns nil as a result of mixing atom keys with string keys.
  """
  def play_bad2 do
    a = %{:firstname => "Erik", :lastname => "Uus"}

    try do
      a["firstname"] <> " " <> a["lastname"]
    rescue
      ArgumentError -> nil
    end
  end
end

IO.inspect(Map.Get.play_good())
IO.inspect(Map.Get.play_good2())
IO.inspect(Map.Get.play_good3())
IO.inspect(Map.Get.play_bad())
IO.inspect(Map.Get.play_bad2())
