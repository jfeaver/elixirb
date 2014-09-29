prefix = fn(prefix) ->
  fn(string) ->
    "#{prefix} #{string}"
  end
end

mr = prefix.("Mr.")

feaver = mr.("Feaver")

IO.puts(feaver)
