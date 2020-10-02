defmodule MacdonaldModule do
  def order_price(ordered, menu_data) do
    order_price(ordered, menu_data, 0)
  end

  def order_price(ordered, [head | tail], cur) do
    if Enum.member?(ordered, head.name) do
      order_price(ordered, tail, cur + head.price)
    else
      order_price(ordered, tail, cur)
    end
  end

  def order_price(_, [], cur) do
    cur
  end
end
