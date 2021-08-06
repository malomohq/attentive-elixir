defmodule Attentive.Event do
  alias Attentive.{ Operation }

  @doc """
  Make a call to this endpoint when a user adds a product to their shopping
  cart.
  """
  @spec add_to_cart(Keyword.t()) :: Operation.t()
  def add_to_cart(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/events/ecommerce/add-to-cart")
  end

  @doc """
  Make a call to this endpoint for any event-based data representing user
  actions.
  """
  @spec create(Keyword.t()) :: Operation.t()
  def create(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/events/custom")
  end

  @doc """
  Make a call to this endpoint when a user views a product.
  """
  @spec product_view(Keyword.t()) :: Operation.t()
  def product_view(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/events/ecommerce/product-view")
  end

  @doc """
  Make a call to this endpoint when a user generates an order or purchase.
  """
  @spec purchase(Keyword.t()) :: Operation.t()
  def purchase(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/events/ecommerce/purchase")
  end
end
