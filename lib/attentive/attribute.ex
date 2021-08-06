defmodule Attentive.Attribute do
  alias Attentive.{ Operation }

  @doc """
  Make a call to this endpoint for any attribute-based data.
  """
  @spec create(Keyword.t()) :: Operation.t()
  def create(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/attributes/custom")
  end
end
