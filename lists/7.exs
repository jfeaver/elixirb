defmodule MyList do
  def span(from, to) when from > to, do: []
  def span(from, to) when from <= to do
    [from | span( from + 1, to )]
  end

  def any?([], _func), do: false
  def any?([h|t], func) do
    func.(h) || any?(t,func)
  end
end

# Use your span function and list comprehensions to return a list of the prime numbers from 2 to n.

defmodule Math do
  #def primes(limit) do
  #  the_primes = [2]
  #  for n <- MyList.span(3, limit),
  #    do: {
  #      the_primes = the_primes |> collect_prime(n)
  #    }
  #  Enum.reverse(the_primes)
  #end

  #defp collect_prime( the_primes, n ) do
  #  MyList.any?( the_primes, &(rem(&1, n) == 0) )
  #    |> collect_prime( the_primes, n )
  #end
  #defp collect_prime( true, the_primes, _n ), do: the_primes
  #defp collect_prime( false, the_primes, n ), do: [n|the_primes]

  def primes(limit) do
    for n <- MyList.span(2, limit),
      for div <- primes(n - 1),
        when rem(
  end
end
