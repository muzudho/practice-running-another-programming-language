defmodule FromElixir do
  @moduledoc """
  Documentation for `FromElixir`.
  """

  @doc """
  Call another program.

  ## Examples

      mix run

  """
  def start(_type, _args) do
    {output, status} = System.cmd("python", ["i_am.py"], cd: "../python_example")
    IO.puts("output:#{output} status:#{status}")

    {:ok, self()}
  end
end
