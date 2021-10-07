defmodule Attentive.Helpers.Headers do
  @moduledoc false

  alias Attentive.{ Request, Operation }

  @spec put_content_type(Request.t(), Operation.t()) :: Request.t()
  def put_content_type(request, %_{ content_type: :www_form }) do
    headers = request.headers
    headers = headers ++ [{ "content-type", "application/x-www-form-urlencoded" }]

    Map.put(request, :headers, headers)
  end

  def put_content_type(request, %_{ content_type: :json }) do
    headers = request.headers
    headers = headers ++ [{ "content-type", "application/json" }]

    Map.put(request, :headers, headers)
  end
end
