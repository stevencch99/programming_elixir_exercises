#---
# Excerpted from "Programming Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/elixir for more book information.
#---
defmodule MyList do
  def len([]),             do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]),              do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]

  def add_1([]),              do: [] 
  def add_1([ head | tail ]), do: [ head+1 | add_1(tail) ]

  def map([], _func),             do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def sum(list), do: _sum(list, 0)

  # private methods
  def _sum([], total), do: total
  def _sum([ head | tail ], total), do: _sum(tail, head+total)

  def mapsum(list, func) do
    map(list, func)
    |> sum
  end
end
