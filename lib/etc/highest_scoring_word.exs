defmodule Kata do
  def high(str) do
    String.split(str, " ")
    |> Enum.max_by(&_score(&1))
  end

  defp _score(word) do
    String.to_charlist(word)
    |> Enum.reduce(0, &(&1 + &2 - 96))
  end
end

samples = [
  {"man i need a taxi up to ubud", "taxi"},
  {"what time are we climbing up the volcano", "volcano"},
  {"take me to semynak", "semynak"},
  {"massage yes massage yes massage", "massage"},
  {"take two bintang and a dance please", "bintang"}
]

Enum.map(samples, fn a -> Tuple.to_list(a) |> Enum.at(0) |> Kata.high() |> IO.inspect() end)
