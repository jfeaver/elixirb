defmodule Math do
  def sum([]), do: 0
  def sum([n|t]) do
    n + sum(t)
  end
end
