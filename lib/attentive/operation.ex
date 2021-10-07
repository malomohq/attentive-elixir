defmodule Attentive.Operation do
  @type t ::
          %__MODULE__{
            content_type: :json | :www_form,
            method: Attentive.http_method_t(),
            params: Keyword.t(),
            path: String.t()
          }

  defstruct [content_type: :json, method: nil, params: [], path: nil]
end
