prefix = fn prefix -> (fn name -> "#{prefix} #{name}" end) end

mrs = prefix.("Mrs")
IO.inspect mrs.("Smith")
IO.inspect prefix.("Elixir").("Rocks")
