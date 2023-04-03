# Elixir goes ASCII Art ¯\\_(ツ)_/¯

This is a repo to play around with ASCII and elixir.

The aim is to create different patterns in your terminal that are made up of characters from a given string, in our case _Elixir_.

## The heart shape

![Alt text](images/ASCII_heart_elixir.png)

### How to run

1. Clone the repo.
2. In your terminal, run:

```zsh
elixir we_love.exs
```

3. Enjoy playing around with it 😃

## Breakdown of the code

 The definition of the module `WeLove` contains the module attribute `love`, and the functions `character_at`, `math_power`, and `patch_together`.

 The code is split into 5 parts:

1. The module attribute `love` stores the string "Elixir ", chopped into its chars. (… of course, you can change the value to whatever you want, however, paying homage to our beloved Elixir lang seemed kinda fitting to start with 🙃)

2. The function `character_at` calculates the index of the character in the @love string using the modulo operator (which returns the remainder of the division of its first argument by its second argument) and the length of the string.

3. The function `math_power` takes two arguments, x and y, and returns a boolean, indicating whether the point (x, y) is inside the heart shape or not.

* This is the basic mathematical formula for our heart: ((x)² + (y)^2 - 1)³ - (x)² * (y)³ <= 0
* The ((x)² + (y)² - 1)³ part describes a circle, the (x)² * (y)³ part descibes a cube.
* Subtract the (x)² * (y)³ part from the ((x)² + (y)² - 1)³ part and less-than-or-equal it to 0 to get the shape of a heart.
* To play around with this math part, visit: <https://www.wolframalpha.com/input?i=++%28%28x+*+0.05%29%5E2+%2B+%28y+*+0.1%29%5E2+-+1%29%5E3+-+%28x+*+0.05%29%5E2+*+%28y+*+0.1%29%5E3+%3C%3D+0>

4. The function `patch_together` is the main function that creates the heart shape. It does so by:

* maps over a range of y values, and for each y value, again maps over a range of x values in order to create a row of characters for that specific y value.

* joins the characters in each of those rows to form a string.

* reverses the order of all the rows to make the heart point upwards.

* joins all the rows with a newline character to form the complete heart shape.

5. The last section of the code calls the `patch_together` function and prints the result to the terminal.
