defmodule Attentive.AttributeTest do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "create/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/attributes/custom")

    assert expected == Attentive.Attribute.create(p1: "v")
  end
end
