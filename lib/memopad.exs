lists0 = [1, 2, 3, 4, 5]
Enum.each(lists0, &IO.inspect(&1))

map0 = %{
  name: "Dave",
  likes: "programming",
  where: "dallas"
}

IO.inspect(Map.keys(map0))

defmodule Fns do
  require IEx
  IEx.pry()

  def hello_world do
    "hello_world"
  end

  def fn0() do
    &(&1 * 2)
  end
end

Fns.hello_world()

fn0 = &(&1 * 2)
fn1 = fn x -> x * 2 end

1..10
|> IO.inspect()
|> Enum.map(fn0)
|> Enum.map(fn1)
|> IO.inspect()
|> Enum.sum()
|> IO.inspect()u

1..100
|> IO.inspect()
|> Enum.sum()
|> IO.inspect()

lists0 = [1, 2, 3, 4, 5]
Enum.each(lists0, IO.inspect/1)

[1, 2, 3]
|> Enum.map(& &1)
|> IO.inspect()

[1,2,3]
|> Enum.each(fn x -> IO.inspect(x) end )
|> IO.inspect()
