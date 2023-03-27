defmodule Love do
  @love "We ❤️ Inspired "

  def character_at(love, x, y) do
    index = rem(x - y, String.length(love))
    char = String.slice(@love, index..index)

    if (:math.pow(x * 0.05, 2) + :math.pow(y * 0.1, 2) - 1) ** 3 -
         :math.pow(x * 0.05, 2) * :math.pow(y * 0.1, 3) <= 0 do
      char
    else
      " "
    end
  end

  def heart do
    -15..15
    |> Enum.reverse()
    |> Enum.map(fn y ->
      -30..29
      |> Enum.map(fn x -> Love.character_at(@love, x, y) end)
      |> Enum.join("")
    end)
    |> Enum.join("\n")
  end
end

IO.puts(Love.heart())
