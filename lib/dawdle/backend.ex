defmodule Dawdle.Backend do
  @moduledoc """
  Behaviour module for Dawdle backend implementation
  """

  @callback start_link() :: {:ok, pid()}

  @callback send(Dawdle.callback(), Dawdle.argument(), Dawdle.duration())
  :: :ok | {:error, term()}
end
