defmodule MyList do
  def caesar([], _n), do: []
  def caesar([h|t], n) when h + n > ?z do
    [rem(h + n, ?z) + ?a - 1|caesar(t, n)]
  end
  def caesar([h|t], n) do
    [h + n|caesar(t, n)]
  end
end
