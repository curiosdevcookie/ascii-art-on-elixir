defmodule EasterEgg do
  @egg String.graphemes("Elixir ")

  def character_at(x, y) do
    index = rem(x - y, length(@egg))
    char = Enum.at(@egg, index)

    case math_power(x, y) do
      true -> char
      false -> " "
    end
  end

  def math_power(x, y) when y > 0, do: :math.pow(x / 2.5, 2) + :math.pow(y / 2, 2) <= 100
  def math_power(x, y), do: :math.pow(x / 2.5, 2) + :math.pow(y / 1, 2) <= 100

  def patch_together() do
    -13..23
    |> Enum.map(fn y ->
      -30..30
      |> Enum.map(fn x -> EasterEgg.character_at(x, y) end)
      |> Enum.join("")
    end)
    |> Enum.reverse()
    |> Enum.join("\n")
  end
end

IO.puts(EasterEgg.patch_together())
