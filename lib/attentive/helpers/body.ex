defmodule Attentive.Helpers.Body do
  @moduledoc false

  alias Attentive.{ Config, Operation }

  @spec encode!(Operation.t(), Config.t()) :: String.t()
  def encode!(%_{ method: method }, _config)
      when method == :delete or method == :get do
    ""
  end

  def encode!(operation, config) do
    operation.params
    |> Enum.into(%{})
    |> config.json_codec.encode!()
  end
end
