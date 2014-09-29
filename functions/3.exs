fizzbuzz_word = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz = fn(n) ->
  fizzbuzz_word.(rem(n,3),rem(n,5),n)
end

Enum.map(10..16, fn(n) -> IO.puts( fizzbuzz.(n) ) end)
