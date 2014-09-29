defmodule MyList do
  def flatten(list),
    do: Enum.reverse(_flatten(list, []))

  defp _flatten([], acc),
    do: acc
  defp _flatten([h|t], acc)
    when is_list( h ),
    do: _flatten(t, _flatten(h, acc))
  defp _flatten([h|t], acc),
    do: _flatten(t, [h|acc])
end

