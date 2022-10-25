defmodule Module.Import do
  @moduledoc """
  This module demonstrates how to import functions
  from other module.
  """

  import Number.Currency
  import Number.Human, only: [number_to_human: 1]

  @doc """
  Returns "189 000,50 €"
  """
  def play_good() do
    number_to_currency(189_000.50,
      unit: "€",
      separator: ",",
      delimiter: " ",
      format: "%n %u"
    )
  end

  @doc """
  Returns "1.23 Million"
  """
  def play_good2() do
    number_to_human(1_234_567)
  end

  # @doc """
  # Throws compile error as only
  # number_to_human is imported
  # """
  # def play_bad4 do
  #     number_to_ordinal(3)
  # end
end

IO.inspect(Module.Import.play_good())
IO.inspect(Module.Import.play_good2())
