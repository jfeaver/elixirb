defmodule Order do
  def calculate_totals(orders, tax_rates) do
    for order  <- orders,
    do: Dict.put(order, :total_amount, _total(order))
  end

  defp _tax_rate(tax_rates, state), do: tax_rates[state] || 0

  defp _total(order, tax_rates), do: _total(order[:net_amount], tax_rates, order[:ship_to])
  defp _total(net, tax_rates, state) do
    net * (1 + _tax_rate(tax_rates, state))
      |> _round(2)
  end

  defp _round(dollar_amount), do: Float.round(dollar_amount, 2)
end

tax_rates = [ NC: 0.075, TX: 0.08 ]
orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount: 35.50 ],
  [ id: 125, ship_to: :TX, net_amount: 24.00 ],
  [ id: 126, ship_to: :TX, net_amount: 44.80 ],
  [ id: 127, ship_to: :NC, net_amount: 25.00 ],
  [ id: 128, ship_to: :MA, net_amount: 10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 120, ship_to: :NC, net_amount: 50.00 ] ]

IO.inspect(Order.calculate_totals(orders, tax_rates))
