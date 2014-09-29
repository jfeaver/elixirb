list_concat = fn (a, b) ->
  a ++ b
end
result = list_concat.([:a, :b], [:c, :d])
IO.puts(inspect result)

sum = fn( a, b, c ) ->
  a + b + c
end
result = sum.(1,2,3)
IO.puts(result)

pair_tuple_to_list = fn( { a, b } ) ->
  [a, b]
end
result = pair_tuple_to_list.( { 1234, 5678 } )
IO.puts(inspect result)
IO.puts(result)
