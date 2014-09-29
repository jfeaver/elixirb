defmodule Math do
  def sum(list), do: _sum(list, 0)
  # private methods
  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)

  def mapsum(list, func), do: _mapsum(list, func, 0)
  defp _mapsum([], _func, a), do: a
  defp _mapsum([n|t], func, a) do
    _mapsum(t, func, a + func.(n))
  end
end
