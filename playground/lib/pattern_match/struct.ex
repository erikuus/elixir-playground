defmodule PatternMatch.Struct do
  @moduledoc """
  This module provides examples of using pattern matching with data structure.
  """

  defmodule Fullname do
    @moduledoc """
    This module provides structure for examples.
    """
    defstruct firstname: "", lastname: "", middlename: ""
  end

  @doc """
  Returns structure as a result of successful pattern match.
  """
  def play_good do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %Fullname{firstname: "Erik", lastname: "Uus"} = a
  end

  @doc """
  Returns structure as a result of successful pattern match with colon keys.
  """
  def play_good2 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %Fullname{:firstname => "Erik", :lastname => "Uus"} = a
  end

  @doc """
  Returns structure as a result of successful pattern match with map.
  Structures are maps, but maps are not structures
  """
  def play_good3 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %{firstname: "Erik", lastname: "Uus"} = a
  end

  @doc """
  Returns structure as a result of successful pattern match with
  structure that has less elements.

  NOTE! Maps and structures match if pattern has
  less items or no items at all, but not lists
  """
  def play_good4 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %Fullname{firstname: "Erik"} = a
  end

  @doc """
  Returns structure as a result of successful pattern match with
  structure that has no elements.
  """
  def play_good5 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %Fullname{} = a
  end

  @doc """
  Returns structure as a result of successful pattern match with wildcard.
  """
  def play_good6 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %Fullname{firstname: "Erik", lastname: _} = a
  end

  @doc """
  Returns "Erik" as a result of successful pattern match with assignment.
  """
  def play_good7 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}
    %Fullname{firstname: name, lastname: "Uus"} = a
    name
  end

  @doc """
  Returns "Erik" as a result of successful pattern match with assignment.
  """
  def play_good8 do
    a = %Fullname{firstname: "My name is Erik", lastname: "Uus"}
    %Fullname{firstname: "My name is " <> name, lastname: "Uus"} = a
    name
  end

  @doc """
  Returns "" as a result of successful pattern match with assignment.

  NOTE! When using map this will not match, but as struct
  has all elements present, it will match.
  """
  def play_good9 do
    a = %Fullname{lastname: "Uus"}
    %Fullname{firstname: name} = a
    name
  end

  @doc """
  Returns "Match Error: Uus is not Uks" as a result of failed pattern match.
  """
  def play_bad do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}

    try do
      %Fullname{firstname: "Erik", lastname: "Uks"} = a
    rescue
      MatchError -> "Match Error: Uus is not Uks"
    end
  end

  @doc """
  Returns "Match Error: birthday key is missing" as a result of failed pattern match with map
  that has more elements.
  """
  def play_bad2 do
    a = %Fullname{firstname: "Erik", lastname: "Uus"}

    try do
      %{firstname: "Erik", lastname: "Uus", birthday: "1973-07-30"} = a
    rescue
      MatchError -> "Match Error: birthday key is missing"
    end
  end

  @doc """
  Returns "Match Error: maps are not structures" as a result of failed
  pattern match. Structures are maps, but maps are not structures.
  """
  def play_bad3 do
    a = %{firstname: "Erik", lastname: "Uus"}

    try do
      %Fullname{firstname: "Erik", lastname: "Uus"} = a
    rescue
      MatchError -> "Match Error: maps are not structures"
    end
  end
end

IO.inspect(PatternMatch.Struct.play_good())
IO.inspect(PatternMatch.Struct.play_good2())
IO.inspect(PatternMatch.Struct.play_good3())
IO.inspect(PatternMatch.Struct.play_good4())
IO.inspect(PatternMatch.Struct.play_good5())
IO.inspect(PatternMatch.Struct.play_good6())
IO.inspect(PatternMatch.Struct.play_good7())
IO.inspect(PatternMatch.Struct.play_good8())
IO.inspect(PatternMatch.Struct.play_good9())
IO.inspect(PatternMatch.Struct.play_bad())
IO.inspect(PatternMatch.Struct.play_bad2())
IO.inspect(PatternMatch.Struct.play_bad3())
