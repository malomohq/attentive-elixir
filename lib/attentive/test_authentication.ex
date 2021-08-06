defmodule Attentive.TestAuthentication do
  alias Attentive.{ Operation }
  
  @doc """
  Make a call to this endpoint to test your unique token that you generate in
  the Attentive product.
  """
  @spec me :: Operation.t()
  def me do
    %Operation{}
    |> Map.put(:method, :get)
    |> Map.put(:path, "/me")
  end
end
