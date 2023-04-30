defmodule ElixirExample do
  @moduledoc """
  Documentation for `ElixirExample`.
  """

  @doc """
  Hello world.

  ## Examples

      mix run

  """
  def start(_type, _args) do
    IO.puts("Hello, world!! I am Elixir!")
    {:ok,self()}
  end
end
