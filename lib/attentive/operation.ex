defmodule Attentive.Operation do
  @type t ::
          %__MODULE__{
            method: Attentive.http_method_t(),
            params: Keyword.t(),
            path: String.t()
          }

  defstruct [method: nil, params: [], path: nil]
end
