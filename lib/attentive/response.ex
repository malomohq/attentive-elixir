defmodule Attentive.Response do
  alias Attentive.{ Config, Http }

  @type t ::
          %__MODULE__{
            body: any,
            headers: Attentive.http_headers_t(),
            status_code: Attentive.http_status_code_t()
          }

  defstruct [:body, :headers, :status_code]

  @spec new(Http.response_t(), Config.t()) :: t
  def new(response, config) do
    body =
      response
      |> Map.get(:body)
      |> decode_body!(config)

    %__MODULE__{}
    |> Map.put(:body, body)
    |> Map.put(:headers, Map.get(response, :headers))
    |> Map.put(:status_code, Map.get(response, :status_code))
  end

  defp decode_body!("", _config) do
    %{}
  end

  defp decode_body!(body, config) do
    config.json_codec.decode!(body)
  end
end
