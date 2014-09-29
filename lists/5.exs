defmodule MyEnum do
  def all?([], _func), do: true
  def all?([h|t], func) do
    func.(h) && all?(t,func)
  end

  def each([], _func), do: :ok
  def each([h|t], func) do
    func.(h)
    each(t, func)
  end

  def filter([], _func), do: []
  def filter([h|t], func), do: _filter(func.(h), h, t, func)

  defp _filter(true, h, t, func), do: [h|filter(t, func)]
  defp _filter(false, _h, t, func), do: filter(t, func)

  def split(list, count) when count < 0 and abs(count) > length(list), do: {[], list}
  def split(list, count) when count < 0 do
    split(list, length(list)+count)
  end
  def split(list, count), do: _split(list, count, [])
  defp _split([], _count, bin), do: {Enum.reverse(bin), []}
  defp _split(remaining, 0, bin), do: {Enum.reverse(bin), remaining}
  defp _split([h|t], count, bin) when count > 0 do
    _split(t, count - 1, [h|bin])
  end


  def take(list, count) when count < 0 do
    {_remaining, take_these} = split(list, count)
    take_these
  end
  def take(list, count) do
    {take_these, _remaining} = split(list, count)
    take_these
  end
end
