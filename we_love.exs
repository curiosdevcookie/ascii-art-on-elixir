defmodule WeLove do
  @love String.graphemes("Elixir ")

  def character_at(x, y) do
    index = rem(x - y, length(@love))
    char = Enum.at(@love, index)

    case math_power(x, y) do
      true -> char
      false -> " "
    end
  end

  def math_power(x, y) do
    :math.pow(:math.pow(x * 0.05, 2) + :math.pow(y * 0.1, 2) - 1, 3) -
      :math.pow(x * 0.05, 2) * :math.pow(y * 0.1, 3) <= 0
  end

  def patch_together() do
    -15..15
    |> Enum.map(fn y ->
      -30..30
      |> Enum.map(fn x -> WeLove.character_at(x, y) end)
      |> Enum.join("")
    end)
    |> Enum.reverse()
    |> Enum.join("\n")
  end
end

IO.puts(WeLove.patch_together())
