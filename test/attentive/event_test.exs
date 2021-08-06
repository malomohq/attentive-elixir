defmodule Attentive.EventTest do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "add_to_cart/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/add-to-cart")

    assert expected == Attentive.Events.add_to_cart(p1: "v")
  end

  test "create/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/custom")

    assert expected == Attentive.Events.create(p1: "v")
  end

  test "product_view/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/product-view")

    assert expected == Attentive.Events.product_view(p1: "v")
  end

  test "purchase/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/purchase")

    assert expected == Attentive.Events.purchase(p1: "v")
  end
end
