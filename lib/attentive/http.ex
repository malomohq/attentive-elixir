defmodule Attentive.Http do
  alias Attentive.{ Request }

  @type response_t ::
          %{
            body: String.t(),
            headers: Attentive.http_headers_t(),
            status_code: Attentive.http_status_code_t()
          }

  @callback send(
              request :: Request.t(),
              opts :: any
            ) :: { :ok, response_t } | { :error, response_t | any }
end
