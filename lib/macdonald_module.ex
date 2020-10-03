defmodule MacdonaldModule do
  def get_total_price(ordered, menu_data) do
    get_total_price(ordered, menu_data, 0)
  end

  def get_total_price(ordered, [head | tail], cur) do
    if Enum.member?(ordered, head.name) do
      get_total_price(ordered, tail, cur + head.price)
    else
      get_total_price(ordered, tail, cur)
    end
  end

  def get_total_price(_, [], cur) do
    cur
  end
end
