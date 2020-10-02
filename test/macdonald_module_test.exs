defmodule MacdonaldModuleTest do
  use ExUnit.Case
  import MacdonaldModule

  describe "맥도날드 모듈 테스트" do
    test "빅맥 콜라 주문" do
      ordered_menu = ["big_mac", "cola"]

      menu_data = [
        %{
          name: "big_mac",
          price: 3900
        },
        %{
          name: "mac_chicken",
          price: 3000
        },
        %{
          name: "cola",
          price: 1000
        },
        %{
          name: "fries",
          price: 1500
        }
      ]

      assert order_price(ordered_menu, menu_data) == 4900
    end

    test "콜라 프라이 주문" do
      ordered_menu = ["cola", "fries"]

      menu_data = [
        %{
          name: "big_mac",
          price: 3900
        },
        %{
          name: "mac_chicken",
          price: 3000
        },
        %{
          name: "cola",
          price: 1000
        },
        %{
          name: "fries",
          price: 1500
        }
      ]

      assert order_price(ordered_menu, menu_data) == 2500
    end
  end
end
