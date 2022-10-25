defmodule Module.Alias do
  @moduledoc """
  This module demonstrates how to use alias.
  """

  alias Number.Currency
  alias Number.Human

  @doc """
  Returns "189 000,50 €"
  """
  def play_good do
    Currency.number_to_currency(189_000.50,
      unit: "€",
      separator: ",",
      delimiter: " ",
      format: "%n %u"
    )
  end

  @doc """
  Returns "1.23 Million"
  """
  def play_good2 do
    Human.number_to_human(1_234_567)
  end

  @doc """
  Returns "3rd"
  """
  def play_good3 do
    Human.number_to_ordinal(3)
  end
end

IO.inspect(Module.Alias.play_good())
IO.inspect(Module.Alias.play_good2())
IO.inspect(Module.Alias.play_good3())
