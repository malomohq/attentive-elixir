defmodule Attentive.Helpers.Auth do
  @moduledoc false

  alias Attentive.{ Config, Request }

  @spec put_api_key(Request.t(), Config.t()) :: Request.t()
  def put_api_key(request, %_{ api_key: api_key }) when not is_nil(api_key) do
    headers = request.headers
    headers = headers ++ [{ "authorization", "Bearer #{api_key}" }]

    Map.put(request, :headers, headers)
  end

  def put_api_key(request, _config) do
    request
  end
end
