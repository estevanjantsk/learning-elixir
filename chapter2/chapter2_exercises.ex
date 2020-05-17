defmodule Chapter2Exercises do
  def sum([]), do: 0

  def sum([head | tail]) do
    sum(head) + sum(tail)
  end

  def sum(head), do: head
end

# Enum Module
# iex> Enum.map([1, 2, 3], fn x -> x * 2 end)
# [2, 4, 6]

# iex> Enum.sum([1, 2, 3])
# 6

# iex> Enum.map(1..3, fn x -> x * 2 end)
# [2, 4, 6]

# iex> Enum.sum(1..3)
# 6

# iex> map = %{"a" => 1, "b" => 2}
# iex> Enum.map(map, fn {k, v} -> {k, v * 2} end)
# [{"a", 2}, {"b", 4}]

# :crypto.hash(:md5, "Tales from the Crypt")
