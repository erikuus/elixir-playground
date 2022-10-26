defmodule Struct.Update do
  @moduledoc """
  This module provides examples of updating struct.
  """

  defmodule Fullname do
    @moduledoc """
    This module provides structure for examples.
    """
    defstruct firstname: "", lastname: "", middlename: ""
  end

  @doc """
  Returns %Struct.Update.Fullname{firstname: "Erik", lastname: "Uus", middlename: ""}
  Note that structs can be updated with same syntax as maps
  """
  def play_good do
    fullname = %Fullname{}
    %{fullname | firstname: "Erik", lastname: "Uus"}
  end

  @doc """
  Returns %Struct.Update.Fullname{firstname: "E.", lastname: "U.", middlename: "-"}
  Note that here struct specific update syntax is used
  """
  def play_good2 do
    fullname = %Fullname{}
    %Fullname{fullname | firstname: "E.", lastname: "U."}
  end

  @doc """
  Returns "Expected a struct, but it is a map" as struct syntax
  can not be used to update map
  """
  def play_bad do
    fullname = %{firstname: "", lastname: "", middlename: ""}

    try do
      %Fullname{fullname | firstname: "Erik", lastname: "Uus"}
    rescue
      BadStructError -> "Expected a struct, but it is a map"
    end
  end
end

IO.inspect(Struct.Update.play_good())
IO.inspect(Struct.Update.play_good2())
IO.inspect(Struct.Update.play_bad())
