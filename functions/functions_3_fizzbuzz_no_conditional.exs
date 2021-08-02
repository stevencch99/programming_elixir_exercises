fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

test_with_num = fn n -> 
  IO.inspect fizz_buzz.(rem(n, 3), rem(n,5), n)
end


for n <- (10..16) do
  test_with_num.(n)
end
