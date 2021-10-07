defmodule Attentive.OAuth2 do
  alias Attentive.{ Operation }

  @doc """
  Make a call to this endpoint to test your unique token that you generate in
  the Attentive product.
  """
  @spec access_token(Keyword.t()) :: Operation.t()
  def access_token(params) do
    %Operation{}
    |> Map.put(:content_type, :www_form)
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/authorization-codes/tokens")
  end
end
