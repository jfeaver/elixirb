defmodule Math do
  def sum(n), do: _sum(n, n)
  def _sum(1, a), do: a
  def _sum(n, a) do
    _sum(n - 1, a + n - 1)
  end

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end
