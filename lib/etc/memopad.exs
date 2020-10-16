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


String.graphemes("112")
|> IO.inspect()
|> Enum.each(&([head | tails]))

String.at("my_string",1)
|> IO.inspect()

String.to_charlist("o")
|> IO.inspect()

String.to_charlist("abc")
|>IO.inspect
String.to_charlist("olá")
|>IO.inspect

"abc" <> <<0>>
|>IO.inspect

"abc"
|> String.to_charlist()
|> IO.inspect(charlists: :as_lists)
|> Enum.at(1)

IO.inspect([1,2,3])
"abc"
|> IO.inspect(binaries: :as_list)


[head ,next| tail] = [1,2,3,4]
IO.inspect(head)
IO.inspect(next)
IO.inspect(tail)

1.5
|> floor()
|> IO.inspect()

12.433
|> round()
|> IO.inspect()

28938.2332 + 82932398
|> round()
|> IO.inspect()
