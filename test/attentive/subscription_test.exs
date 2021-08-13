defmodule Attentive.SubscriptionTest do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "opt_in/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/subscriptions")

    assert expected == Attentive.Subscription.opt_in(p1: "v")
  end

  test "opt_out/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :delete)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/subscriptions")

    assert expected == Attentive.Subscription.opt_out(p1: "v")
  end

  test "unsubscribe/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/subscriptions/unsubscribe")

    assert expected == Attentive.Subscription.unsubscribe(p1: "v")
  end
end
