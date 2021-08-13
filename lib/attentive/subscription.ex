defmodule Attentive.Subscription do
  alias Attentive.{ Operation }

  @doc """
  Make a call to this endpoint to opt-in a user to a subscription(s).
  """
  @spec opt_in(Keyword.t()) :: Operation.t()
  def opt_in(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/subscriptions")
  end

  @doc """
  Make a call to this endpoint to opt-out a user from all active text
  subscriptions.
  """
  @spec opt_out(Keyword.t()) :: Operation.t()
  def opt_out(params) do
    %Operation{}
    |> Map.put(:method, :delete)
    |> Map.put(:params, params)
    |> Map.put(:path, "/subscriptions")
  end

  @doc """
  Make a call to this endpoint to unsubscribe a user from subscription(s).
  """
  @spec unsubscribe(Keyword.t()) :: Operation.t()
  def unsubscribe(params) do
    %Operation{}
    |> Map.put(:method, :post)
    |> Map.put(:params, params)
    |> Map.put(:path, "/subscriptions/unsubscribe")
  end
end
