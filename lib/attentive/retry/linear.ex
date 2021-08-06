defmodule Attentive.Retry.Linear do
  @behaviour Attentive.Retry

  @impl true
  def wait_for(_request, config) do
    Keyword.get(config.retry_opts, :retry_in, 0)
  end
end
