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
  Returns nil as atom key is used but there is no such key in map
  """
  def play_good4 do
    a = %{:firstname => "Erik", :lastname => "Uus"}
    a[:birthday]
  end

  @doc """
  Returns error message as dot notation is used but there is no such key in map
  """
  def play_bad do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}

    try do
      a.birthday
    rescue
      KeyError -> "Using dot notion to get value of missing key throws key error!"
    end
  end

  @doc """
  Returns error message as dot notation is used to get values of string keys.
  """
  def play_bad2 do
    a = %{"firstname" => "Erik", "lastname" => "Uus"}

    try do
      a.firstname <> " " <> a.lastname
    rescue
      KeyError -> "Using dot notion to get values of string keys throws key error!"
    end
  end

  @doc """
  Returns error message as string keys are used to get values of atom keys.
  """
  def play_bad3 do
    a = %{:firstname => "Erik", :lastname => "Uus"}

    try do
      a["firstname"] <> " " <> a["lastname"]
    rescue
      ArgumentError -> "Using string keys to get values of atom keys throws argument error!"
    end
  end
end

IO.inspect(Map.Get.play_good())
IO.inspect(Map.Get.play_good2())
IO.inspect(Map.Get.play_good3())
IO.inspect(Map.Get.play_good4())
IO.inspect(Map.Get.play_bad())
IO.inspect(Map.Get.play_bad2())
IO.inspect(Map.Get.play_bad3())
