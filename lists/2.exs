defmodule MyList do
  def max([n|t]), do: _max(t, n)
  defp _max([], max), do: max
  defp _max([n|t], max) when n > max, do: _max(t, n)
  defp _max([_n|t], max), do: _max(t, max)
end
