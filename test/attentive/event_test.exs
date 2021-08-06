defmodule Attentive.EventTest do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "add_to_cart/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/add-to-cart")

    assert expected == Attentive.Event.add_to_cart(p1: "v")
  end

  test "create/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/custom")

    assert expected == Attentive.Event.create(p1: "v")
  end

  test "product_view/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/product-view")

    assert expected == Attentive.Event.product_view(p1: "v")
  end

  test "purchase/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/events/ecommerce/purchase")

    assert expected == Attentive.Event.purchase(p1: "v")
  end
end
