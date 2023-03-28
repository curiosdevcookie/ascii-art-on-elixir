# First, we create a module called Love. We define a global variable called @love and assign it the value "Elixir ".
# Of course, you can change the value of @love to whatever you want.
# However, paying hommage to our beloved Elixir lang seemed kinda fitting to start with 🙃

defmodule WeLove do
  @love "Elixir "

  def character_at(@love, x, y) do
    index = rem(x - y, String.length(@love))
    char = String.slice(@love, index..index)

    if (:math.pow(x * 0.05, 2) + :math.pow(y * 0.1, 2) - 1) ** 3 -
         :math.pow(x * 0.05, 2) * :math.pow(y * 0.1, 3) <= 0 do
      char
    else
      " "
    end
  end

  def heart() do
    -50..50
    |> Enum.map(fn y ->
      -30..29
      |> Enum.map(fn x -> WeLove.character_at(@love, x, y) end)
      |> Enum.join("")
    end)
    |> Enum.reverse()
    |> Enum.join("\n")
  end
end

IO.puts(WeLove.heart())
