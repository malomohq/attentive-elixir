defmodule Attentive.ECommerceTest do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "add_to_cart/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/add-to-cart")

    assert expected == Attentive.ECommerce.add_to_cart(p1: "v")
  end

  test "product_view/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/product-view")

    assert expected == Attentive.ECommerce.product_view(p1: "v")
  end

  test "purchase/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/purchase")

    assert expected == Attentive.ECommerce.purchase(p1: "v")
  end
end
