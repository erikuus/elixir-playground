defmodule Map.Get do
  @moduledoc """
  Accessing Map Values with Atoms vs. Strings
  The square-bracket syntax works with all maps.
  When the keys are atoms, you can also use the dot notation.
  """

  def play_good_atom do
    %{:firstname => "Erik", :lastname => "Uus"}
    |> get_fullname
  end

  def play_good_string do
    %{:firstname => "Erik", :lastname => "Uus"}
    |> get_fullname
  end

  def get_fullname(%{firstname: "Erik", lastname: "Uus"} = map) do
    map.firstname <> " " <> map[:lastname]
  end

  def get_fullname(%{"firstname" => "Erik", "lastname" => "Uus"} = map) do
    map["firstname"] <> " " <> map["lastname"]
  end
end

IO.inspect(Map.Get.play_good_atom())
IO.inspect(Map.Get.play_good_string())
