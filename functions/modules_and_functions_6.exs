# I’m thinking of a number between 1 and 1000.…
# The most efficient way to find the number is to guess halfway between the low and high numbers of the range.
# If our guess is too big, then the answer lies between the bottom of the range and one less than our guess.
# If our guess is too small, then the answer lies between one more than our guess and the end of the range.
# Your API will be guess(actual, range), where range is an Elixir range.

defmodule Chop do
  def guess(ans, range) when is_integer(ans) do
    if ans not in range do
      raise RuntimeError, message: "The given number is not in the range."
    end

    guess = do_get_middle range
    do_guess(ans, range, guess)
  end

  def guess(ans, _range) when not is_integer(ans) do
    {:error, "Expected an integer and a range where the integer lies within the range."}
  end

  defp do_guess(ans, _range, guess) when ans == guess do
    guess_phrase(guess)
    IO.puts "You got it!"
    guess
  end

  defp do_guess(ans, min.._max, guess) when ans < guess do
    guess_phrase(guess)

    new_max = guess - 1
    new_range = min..new_max
    new_guess = do_get_middle(new_range)
    do_guess(ans, new_range, new_guess)
  end

  defp do_guess(ans, _min..max, guess) when ans > guess do
    guess_phrase(guess)

    new_min = guess + 1
    new_range = new_min..max
    new_guess = do_get_middle(new_range)
    do_guess(ans, new_range, new_guess)
  end

  # Return the middle of a range
  def do_get_middle(min..max) do
    count = max - min + 1
    max - div(count, 2)
  end

  defp guess_phrase(guess_num), do: IO.puts "Is it #{guess_num}?" 
end

