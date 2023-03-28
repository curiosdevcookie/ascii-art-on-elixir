# Elixir goes ASCII Art ¯\\_(ツ)_/¯

This is a repo to play around with ASCII and elixir.

The aim is to create a heart-shaped pattern in your terminal that is made up of characters from the given string _Elixir_.

## How to run

1. Clone the repo.
2. In your terminal, run:

```zsh
elixir we_love.exs
```

3. Enjoy playing around with it 😃

## Breakdown of the code

The code is split into 5 parts:

1. The definition of the module `WeLove` contains the global variable `love`, and the functions `character_at` and `heart`.

2. The global variable `love` stores the value "Elixir ". Of course, you can change the value to whatever you want. However, paying homage to our beloved Elixir lang seemed kinda fitting to start with 🙃.

2. The function `character_at` is a helper function that takes three arguments: "@love" is expected to be a string, while "x" and "y" are expected to be integers.

* The first line of the function calculates an index value based on the difference between "x" and "y", using the modulo "rem" function (which returns the remainder of the division of its first argument by its second argument) and the length of the "love" string.

* The second line of the function retrieves a character from the "love" string using the index value calculated in the previous step.

* The next section of the code checks whether the given "x" and "y" coordinates lie inside the ellipse equation. If so, the function returns the character retrieved from the "love" string. Else, it returns just a blank space.

3. The function `heart` creates our heart shape. The function takes no arguments, and:

* maps over a range of y values, and for each y value, again maps over a range of x values in order to create a row of characters for that specific y value.

* joins the characters in each of those rows to form a string.

* reverses the order of all the rows to make the heart point upwards.

* joins all the rows with a newline character to form the complete heart shape.
