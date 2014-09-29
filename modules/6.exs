# iex > GuessingGame.guess( 273, 1.. 1000)
# Is it 500
# Is it 250
# Is it 375
# Is it 312
# Is it 281
# Is it 265
# Is it 273
# 273

defmodule GuessingGame do
  def guess(actual, range) do
    _guess(_guess(range), actual, range)
  end
  defp _guess(a_guess) when is_integer(a_guess), do: IO.puts("Is it #{a_guess}")
  defp _guess(first..last) do
    div((last + first), 2)
  end
  defp _guess(a_guess, actual, _range) when a_guess == actual do
    _guess(a_guess)
    IO.puts(a_guess)
  end
  defp _guess(a_guess, actual, first..last) when a_guess > actual do
    _guess(a_guess)
    _guess(_guess(first..a_guess), actual, first..a_guess)
  end
  defp _guess(a_guess, actual, first..last) when a_guess < actual do
    _guess(a_guess)
    _guess(_guess(a_guess..last), actual, a_guess..last)
  end
end

