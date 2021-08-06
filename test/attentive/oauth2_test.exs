defmodule Attentive.OAuth2Test do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "access_token/1" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :post)
    expected = Map.put(expected, :params, [p1: "v"])
    expected = Map.put(expected, :path, "/authorization-codes/tokens")

    assert expected == Attentive.OAuth2.access_token(p1: "v")
  end
end
