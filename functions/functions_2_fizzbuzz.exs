  # Write a function that takes three arguments.
  # If the first two are zero, return “FizzBuzz.”
  # If the first is zero, return “Fizz.”  
  # If the second is zero, return “Buzz.”
  # Otherwise return the third argument
fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

# IO.puts(Hello.fizz_buzz(0, 0, 3)) # => FizzBuzz

IO.puts "(0, 1, 2) => Fizz"
IO.inspect fizz_buzz.(0, 1, 2)
IO.puts "(0, 0, 2) => FizzBuzz"
IO.inspect fizz_buzz.(0, 0, 2)
IO.puts "(1, 0, 3) => Buzz"
IO.inspect fizz_buzz.(1, 0, 3)
IO.puts "(1, 2, 3) => 3"
IO.inspect fizz_buzz.(1, 2, 3)
