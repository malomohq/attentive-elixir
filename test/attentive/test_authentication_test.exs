defmodule Attentive.TestAuthenticationTest do
  use ExUnit.Case, async: true

  alias Attentive.{ Operation }

  test "me/0" do
    expected = %Operation{}
    expected = Map.put(expected, :method, :get)
    expected = Map.put(expected, :path, "/me")

    assert expected == Attentive.TestAuthentication.me()
  end
end
